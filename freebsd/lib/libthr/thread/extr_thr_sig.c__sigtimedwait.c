
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 int __sys_sigtimedwait (int ,int *,struct timespec const*) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
_sigtimedwait(const sigset_t *set, siginfo_t *info,
 const struct timespec * timeout)
{
 sigset_t newset;

 return (__sys_sigtimedwait(thr_remove_thr_signals(set, &newset), info,
     timeout));
}
