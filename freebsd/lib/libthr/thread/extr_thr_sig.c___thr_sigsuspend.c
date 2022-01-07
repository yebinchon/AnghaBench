
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int in_sigsuspend; scalar_t__ unblock_sigcancel; } ;
typedef int sigset_t ;


 int SIGADDSET (int ,int ) ;
 int SIGCANCEL ;
 int SIGEMPTYSET (int ) ;
 int SIG_UNBLOCK ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int __sys_sigsuspend (int ) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;
 int thr_remove_thr_signals (int const*,int *) ;

int
__thr_sigsuspend(const sigset_t * set)
{
 struct pthread *curthread;
 sigset_t newset;
 int ret, old;

 curthread = _get_curthread();

 old = curthread->in_sigsuspend;
 curthread->in_sigsuspend = 1;
 _thr_cancel_enter(curthread);
 ret = __sys_sigsuspend(thr_remove_thr_signals(set, &newset));
 _thr_cancel_leave(curthread, 1);
 curthread->in_sigsuspend = old;
 if (curthread->unblock_sigcancel) {
  curthread->unblock_sigcancel = 0;
  SIGEMPTYSET(newset);
  SIGADDSET(newset, SIGCANCEL);
  __sys_sigprocmask(SIG_UNBLOCK, &newset, ((void*)0));
 }

 return (ret);
}
