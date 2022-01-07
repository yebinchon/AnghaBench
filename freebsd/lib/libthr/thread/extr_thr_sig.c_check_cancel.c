
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_sigmask; } ;
typedef TYPE_1__ ucontext_t ;
struct pthread {int unblock_sigcancel; scalar_t__ cancel_async; int tid; scalar_t__ in_sigsuspend; scalar_t__ cancel_point; scalar_t__ no_cancel; int cancel_enable; int cancel_pending; } ;


 int PTHREAD_CANCELED ;
 int SIGADDSET (int ,int ) ;
 int SIGCANCEL ;
 scalar_t__ __predict_true (int) ;
 int _pthread_exit_mask (int ,int *) ;
 int _thr_send_sig (struct pthread*,int ) ;
 int thr_wake (int ) ;

__attribute__((used)) static void
check_cancel(struct pthread *curthread, ucontext_t *ucp)
{

 if (__predict_true(!curthread->cancel_pending ||
     !curthread->cancel_enable || curthread->no_cancel))
  return;
 if (curthread->cancel_point) {
  if (curthread->in_sigsuspend && ucp) {
   SIGADDSET(ucp->uc_sigmask, SIGCANCEL);
   curthread->unblock_sigcancel = 1;
   _thr_send_sig(curthread, SIGCANCEL);
  } else
   thr_wake(curthread->tid);
 } else if (curthread->cancel_async) {




  _pthread_exit_mask(PTHREAD_CANCELED,
      ucp? &ucp->uc_sigmask : ((void*)0));
 }
}
