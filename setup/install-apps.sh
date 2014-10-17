#!/usr/bin/env bash

# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install brew cask alternate versions
function installcask() {
    brew cask install --appdir=/Applications "${@}" 2> /dev/null
}

# Install native apps
# installcask alfred
installcask appcleaner
installcask asepsis
# installcask battery-time-remaining
installcask caffeine
installcask cyberduck
installcask dash
installcask diffmerge
installcask dropbox
installcask evernote
installcask firefox
installcask flux
installcask fontprep
installcask freemind
installcask google-chrome
installcask google-drive
installcask imagealpha
installcask imageoptim
installcask ios7-screensaver
installcask iterm2
installcask jumpcut
installcask limechat
installcask mamp
# installcask menumeters
installcask mongodb
installcask mosh
installcask mysqlworkbench
installcask nosleep
installcask robomongo
installcask sequel-pro
installcask skype
installcask spectacle
installcask spotify
installcask sublime-text3
installcask teamviewer
installcask the-unarchiver
installcask torbrowser
installcask transmission
installcask tunnelbear
installcask vagrant
installcask virtualbox
installcask vlc

# QuickLook plugins
installcask betterzipql
installcask qlcolorcode
installcask qlmarkdown
installcask qlstephen
installcask quicklook-csv
installcask quicklook-json

# Vagrant plugins
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-digitalocean

# Python linter dependencies
sudo easy_install pip
sudo pip install pylint

# Enable casks in Alfred
# brew cask alfred link

# Remove outdated versions from the cellar
brew cleanup
