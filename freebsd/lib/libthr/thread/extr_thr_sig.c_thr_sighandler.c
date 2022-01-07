
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_sigmask; } ;
typedef TYPE_1__ ucontext_t ;
struct sigaction {int dummy; } ;
struct usigaction {int lock; struct sigaction sigact; } ;
struct pthread {int deferred_sigmask; int deferred_siginfo; int deferred_sigact; scalar_t__ deferred_run; } ;
typedef struct sigaction siginfo_t ;


 scalar_t__ SIGISMEMBER (int ,int) ;
 scalar_t__ THR_IN_CRITICAL (struct pthread*) ;
 struct usigaction* __libc_sigaction_slot (int) ;
 struct pthread* _get_curthread () ;
 int _thr_deferset ;
 int _thr_rwl_rdlock (int *) ;
 int _thr_rwl_unlock (int *) ;
 int errno ;
 int handle_signal (struct sigaction*,int,struct sigaction*,TYPE_1__*) ;
 int memcpy (int *,struct sigaction*,int) ;

__attribute__((used)) static void
thr_sighandler(int sig, siginfo_t *info, void *_ucp)
{
 struct pthread *curthread;
 ucontext_t *ucp;
 struct sigaction act;
 struct usigaction *usa;
 int err;

 err = errno;
 curthread = _get_curthread();
 ucp = _ucp;
 usa = __libc_sigaction_slot(sig);
 _thr_rwl_rdlock(&usa->lock);
 act = usa->sigact;
 _thr_rwl_unlock(&usa->lock);
 errno = err;
 curthread->deferred_run = 0;
 if (THR_IN_CRITICAL(curthread) && SIGISMEMBER(_thr_deferset, sig)) {
  memcpy(&curthread->deferred_sigact, &act, sizeof(struct sigaction));
  memcpy(&curthread->deferred_siginfo, info, sizeof(siginfo_t));
  curthread->deferred_sigmask = ucp->uc_sigmask;

  ucp->uc_sigmask = _thr_deferset;
  return;
 }

 handle_signal(&act, sig, info, ucp);
}
