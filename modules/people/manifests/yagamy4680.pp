class people::yagamy4680 {
	notify { 'welcome yagamy4680': }

	include osx::global::expand_print_dialog
	include osx::global::expand_save_dialog
	include osx::global::tap_to_click

	include osx::finder::show_all_on_desktop
	include osx::finder::enable_quicklook_text_selection
	include osx::universal_access::ctrl_mod_zoom
	include osx::no_network_dsstores
	
	class {
		'osx::dock::hot_corners':
			bottom_right => "Start Screen Saver"
	}	

	include virtualbox
	include virtualbox::extensions

	class { 'vagrant':
		version => '1.6.5',
		completion => true
	}

	vagrant::plugin {
		'vagrant-cachier': version => '1.1.0'
	}

	vagrant::plugin {
		'vagrant-persistent-storage': version => '0.0.13'
	}

	# include vagrant_manager
	include packer

	include skype
	include hipchat

	include chrome
	include firefox

	include dropbox
	include transmission

	include alfred
	include iterm2::stable
	# include zsh
	include sublime_text

	sublime_text::package { 'Emmet':
		source => 'sergeche/emmet-sublime'
	}

	sublime_text::package { 'LiveScript':
		source => 'paulmillr/LiveScript.tmbundle'
	}

	sublime_text::package { 'Package Control':
		source => 'wbond/package_control'
	}

	include vlc
}
