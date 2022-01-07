
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int __sys_sigwait (int ,int*) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
_sigwait(const sigset_t *set, int *sig)
{
 sigset_t newset;

 return (__sys_sigwait(thr_remove_thr_signals(set, &newset), sig));
}
