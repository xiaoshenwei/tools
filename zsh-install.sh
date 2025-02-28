#!/bin/bash

apt update
apt install -y zsh
apt install -y zsh-syntax-highlighting
apt install -y zsh-autosuggestions
apt install -y zsh-completions

echo "HISTFILE=~/.zsh_history" >> /etc/zsh/zshenv
echo "HISTSIZE=30000" >> /etc/zsh/zshenv
echo "SAVEHIST=30000" >> /etc/zsh/zshenv

echo "autoload -U colors" >> /etc/zsh/zshrc
echo "colors" >> /etc/zsh/zshrc

cp zsh_prompt /etc/zsh/zsh_prompt
echo ". /etc/zsh/zsh_prompt" >> /etc/zsh/zshrc

echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> /etc/zsh/zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /etc/zsh/zshrc
