#!/bin/sh

TIMESTAMP=`date "+%F_%T"`
SOURCEDIR=`pwd`

# install bash settings
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile-${TIMESTAMP}
fi

ln -sf ${SOURCEDIR}/bash/bash_profile ~/.bash_profile


# install vim settings
if [ -d ~/.vim ]; then
  mv ~/.vim ~/.vim-${TIMESTAMP}
fi

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc-${TIMESTAMP}
fi

ln -sf ${SOURCEDIR}/vimrc ~/.vimrc
ln -sf ${SOURCEDIR}/vim ~/.vim

