
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int siginfo_t ;


 int __sys_sigwaitinfo (int ,int *) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
_sigwaitinfo(const sigset_t *set, siginfo_t *info)
{
 sigset_t newset;

 return (__sys_sigwaitinfo(thr_remove_thr_signals(set, &newset), info));
}
