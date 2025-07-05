#!/bin/bash
setting() {
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
    gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
    gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
    gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32

}

store_git() {
    git config --global credential.helper store
    git config --global user.name "ysnbhb"
    git config --global user.email "yassine.bahbib@usmba.ac.ma"
}

setup_exntion() {
    code --install-extension foxundermoon.shell-format >/dev/null 2>&1 &
    code --install-extension ritwickdey.LiveServer >/dev/null 2>&1 &
    code --install-extension golang.go >/dev/null 2>&1 &
    code --install-extension rust-lang.rust-analyzer >/dev/null 2>&1 &
    code --install-extension esbenp.prettier-vscode >/dev/null 2>&1 &
    code --install-extension formulahendry.auto-rename-tag >/dev/null 2>&1 &
    code --install-extension yy0931.vscode-sqlite3-editor >/dev/null 2>&1 &
    code --install-extension Postman.postman-for-vscode >/dev/null 2>&1 &
    code --install-extension rodrigovallades.es7-react-js-snippets >/dev/null 2>&1 &
    code --install-extension PKief.material-icon-theme >/dev/null 2>&1 &
    code --install-extension Cardinal90.multi-cursor-case-preserve >/dev/null 2>&1 &
    code --install-extension Oracle.oracle-java >/dev/null 2>&1 &
}

open_app() {
    discord &
    xdg-open "https://github.com" >/dev/null 2>&1 &
    xdg-open "https://chatgpt.com/" >/dev/null 2>&1 &
    xdg-open "https://learn.zone01oujda.ma/intra/oujda" >/dev/null 2>&1 &
    xdg-open "https://web.telegram.org/k/" >/dev/null 2>&1 &
}
setting
# echo bash >>~/.zshrc
echo "source $HOME/.shell" >>~/.bashrc

cp .shell $HOME
setup_exntion
open_app
store_git
