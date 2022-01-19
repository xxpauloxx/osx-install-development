#!/bin/sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
exec $SHELL

brew install git

# Install neofetch
brew install neofetch

# Install editors
brew install visual-studio-code
brew install intellij-idea-ce
brew install pycharm-ce
brew install nvim

# Install dependencies Python
brew install openssl readline sqlite3 xz zlib

# Install mercurial and golang
brew install mercurial
brew install golang
mkdir -p $HOME/go/{bin,src,pkg}

# Install oracle java
brew install oracle-jdk

# Install sdkman.io
curl -s "https://get.sdkman.io" | zsh

# Install versions managers
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | zsh
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh

# Move env configuration to ~/.zshrc
cp environment ~/.zshrc
source ~/.zshrc

nvm install v16.13.2
echo "nvm use v16.13.2" >> ~/.zshrc

pyenv install 3.10.2
echo "pyenv global 3.10.2" >> ~/.zshrc

gvm install go1.17.6
echo "gvm use go1.17.6" >> ~/.zshrc

echo "clear && neofetch" >> ~/.zshrc

# Install pure zsh
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
