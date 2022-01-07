
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 int __sys_sigwaitinfo (int ,int *) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
__thr_sigwaitinfo(const sigset_t *set, siginfo_t *info)
{
 struct pthread *curthread = _get_curthread();
 sigset_t newset;
 int ret;

 _thr_cancel_enter(curthread);
 ret = __sys_sigwaitinfo(thr_remove_thr_signals(set, &newset), info);
 _thr_cancel_leave(curthread, ret == -1);
 return (ret);
}
