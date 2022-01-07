
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int pid_t ;


 int ERR_SYSTEM ;
 int FSHTTY ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIG_BLOCK ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int errno ;
 int getpid () ;
 int jobdebug_xprintf (char*) ;
 scalar_t__ mygetpgrp () ;
 int setpgid (int ,int) ;
 int setttypgrp (int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigprocmask_cleanup ;
 int stderror (int ,char*,int ) ;
 int strerror (int ) ;
 scalar_t__ tcgetpgrp (int ) ;
 scalar_t__ tpgrp ;
 int xexit (int ) ;

void
pgetty(int wanttty, pid_t pgrp)
{
}
