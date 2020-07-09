# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 999

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

function fish_prompt
    # print user name
    set_color -o red
    printf '%s' (whoami)

    # print hostname
    set_color -o white
    printf ' at '
    set_color -o yellow
    printf '%s' (prompt_hostname)

    # print pwd
    set_color -o white
    printf ' in '
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)

    # print git info
    set_color -o white
    printf ' on'
    set_color blue
    printf '%s' (__fish_git_prompt)

    # marker
    set_color -o cyan
    printf '\nλ '
    set_color normal
end

