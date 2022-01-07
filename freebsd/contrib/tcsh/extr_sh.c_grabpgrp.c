
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;
typedef int pid_t ;


 int EPERM ;
 int SIGTTIN ;
 int SIG_DFL ;
 int errno ;
 int kill (int ,int ) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int signal (int ,int ) ;
 int tcgetpgrp (int) ;

int
grabpgrp(int fd, pid_t desired)
{
    struct sigaction old;
    pid_t pgrp;
    size_t i;

    for (i = 0; i < 100; i++) {
 if ((pgrp = tcgetpgrp(fd)) == -1)
     return -1;
 if (pgrp == desired)
     return 0;
 (void)sigaction(SIGTTIN, ((void*)0), &old);
 (void)signal(SIGTTIN, SIG_DFL);
 (void)kill(0, SIGTTIN);
 (void)sigaction(SIGTTIN, &old, ((void*)0));
    }
    errno = EPERM;
    return -1;
}
