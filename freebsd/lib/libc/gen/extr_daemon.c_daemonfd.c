
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_handler; int sa_mask; } ;
typedef int pid_t ;


 int SIGHUP ;
 int SIG_IGN ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int __libc_sigaction (int ,struct sigaction*,struct sigaction*) ;
 int _dup2 (int,int ) ;
 int _exit (int ) ;
 int errno ;
 int fchdir (int) ;
 int fork () ;
 int setsid () ;
 int sigemptyset (int *) ;

int
daemonfd(int chdirfd, int nullfd)
{
 struct sigaction osa, sa;
 pid_t newgrp;
 int oerrno;
 int osa_ok;


 sigemptyset(&sa.sa_mask);
 sa.sa_handler = SIG_IGN;
 sa.sa_flags = 0;
 osa_ok = __libc_sigaction(SIGHUP, &sa, &osa);

 switch (fork()) {
 case -1:
  return (-1);
 case 0:
  break;
 default:




  _exit(0);
 }

 newgrp = setsid();
 oerrno = errno;
 if (osa_ok != -1)
  __libc_sigaction(SIGHUP, &osa, ((void*)0));

 if (newgrp == -1) {
  errno = oerrno;
  return (-1);
 }

 if (chdirfd != -1)
  (void)fchdir(chdirfd);

 if (nullfd != -1) {
  (void)_dup2(nullfd, STDIN_FILENO);
  (void)_dup2(nullfd, STDOUT_FILENO);
  (void)_dup2(nullfd, STDERR_FILENO);
 }
 return (0);
}
