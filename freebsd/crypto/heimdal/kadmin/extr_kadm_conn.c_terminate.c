
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGRETURN (int ) ;
 int SIG_IGN ;
 scalar_t__ doing_useful_work ;
 int exit (int ) ;
 scalar_t__ getpid () ;
 int killpg (scalar_t__,int) ;
 scalar_t__ pgrp ;
 int signal (int,int ) ;
 int term_flag ;

__attribute__((used)) static RETSIGTYPE
terminate(int sig)
{
    if(getpid() == pgrp) {

 term_flag = 1;
 signal(sig, SIG_IGN);
 killpg(pgrp, sig);
    } else {

 if(doing_useful_work)
     term_flag = 1;
 else
     exit(0);
    }
    SIGRETURN(0);
}
