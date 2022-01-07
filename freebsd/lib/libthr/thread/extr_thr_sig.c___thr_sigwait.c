
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef int sigset_t ;


 int EINTR ;
 int __sys_sigwait (int ,int*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
__thr_sigwait(const sigset_t *set, int *sig)
{
 struct pthread *curthread = _get_curthread();
 sigset_t newset;
 int ret;

 do {
  _thr_cancel_enter(curthread);
  ret = __sys_sigwait(thr_remove_thr_signals(set, &newset), sig);
  _thr_cancel_leave(curthread, (ret != 0));
 } while (ret == EINTR);
 return (ret);
}
