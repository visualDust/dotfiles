function fish_greeting
	set_color green
	echo -n [$hostname]
	set_color normal
	echo " Welcome back,"
	echo $USER | figlet | lolcat
end

function conda
        echo -n "Conda not mounted. Mounting conda..."
        functions -e conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda/bin/conda "shell.fish" "hook" | source
# <<< conda initialize <<<
        echo " Done"
        if test (count $argv) -gt 0
                conda $argv
        end
end
set -x PATH $HOME/.local/bin/ $PATH

starship init fish | source
