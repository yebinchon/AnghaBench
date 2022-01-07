
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;

int
sighold(int sig)
{
 sigset_t set;

 sigemptyset(&set);
 if (sigaddset(&set, sig) == -1)
  return (-1);
 return (__libc_sigprocmask(SIG_BLOCK, &set, ((void*)0)));
}
