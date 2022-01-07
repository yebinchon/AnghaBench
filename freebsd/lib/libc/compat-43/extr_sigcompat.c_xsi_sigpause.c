
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int __libc_sigsuspend (int *) ;
 int sigdelset (int *,int) ;

int
xsi_sigpause(int sig)
{
 sigset_t set;

 if (__libc_sigprocmask(SIG_BLOCK, ((void*)0), &set) == -1)
  return (-1);
 if (sigdelset(&set, sig) == -1)
  return (-1);
 return (__libc_sigsuspend(&set));
}
