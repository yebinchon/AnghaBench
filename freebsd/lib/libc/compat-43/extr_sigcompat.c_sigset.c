
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;} ;
typedef int sigset_t ;
typedef int sa ;
typedef void (* __sighandler_t ) (int) ;


 int SIG_BLOCK ;
 void SIG_ERR (int) ;
 void SIG_HOLD (int) ;
 int SIG_UNBLOCK ;
 int __libc_sigaction (int,struct sigaction*,struct sigaction*) ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int bzero (struct sigaction*,int) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;

void
(*sigset(int sig, void (*disp)(int)))(int)
{
 sigset_t set, pset;
 struct sigaction sa, psa;

 sigemptyset(&set);
 if (sigaddset(&set, sig) == -1)
  return (SIG_ERR);
 if (__libc_sigprocmask(SIG_BLOCK, ((void*)0), &pset) == -1)
  return (SIG_ERR);
 if ((__sighandler_t *)disp == SIG_HOLD) {
  if (__libc_sigprocmask(SIG_BLOCK, &set, &pset) == -1)
   return (SIG_ERR);
  if (sigismember(&pset, sig))
   return (SIG_HOLD);
  else {
   if (__libc_sigaction(sig, ((void*)0), &psa) == -1)
    return (SIG_ERR);
   return (psa.sa_handler);
  }
 } else {
  if (__libc_sigprocmask(SIG_UNBLOCK, &set, &pset) == -1)
   return (SIG_ERR);
 }

 bzero(&sa, sizeof(sa));
 sa.sa_handler = disp;
 if (__libc_sigaction(sig, &sa, &psa) == -1)
  return (SIG_ERR);
 if (sigismember(&pset, sig))
  return (SIG_HOLD);
 else
  return (psa.sa_handler);
}
