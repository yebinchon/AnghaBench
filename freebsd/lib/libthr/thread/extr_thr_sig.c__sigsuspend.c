
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int __sys_sigsuspend (int ) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
_sigsuspend(const sigset_t * set)
{
 sigset_t newset;

 return (__sys_sigsuspend(thr_remove_thr_signals(set, &newset)));
}
