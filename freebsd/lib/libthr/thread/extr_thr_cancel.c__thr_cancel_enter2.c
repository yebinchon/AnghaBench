
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int cancel_point; int tid; } ;


 int PTHREAD_CANCELED ;
 scalar_t__ SHOULD_CANCEL (struct pthread*) ;
 int THR_IN_CRITICAL (struct pthread*) ;
 scalar_t__ __predict_false (int) ;
 int _pthread_exit (int ) ;
 int thr_wake (int ) ;

void
_thr_cancel_enter2(struct pthread *curthread, int maycancel)
{
 curthread->cancel_point = 1;
 if (__predict_false(SHOULD_CANCEL(curthread) &&
     !THR_IN_CRITICAL(curthread))) {
  if (!maycancel)
   thr_wake(curthread->tid);
  else
   _pthread_exit(PTHREAD_CANCELED);
 }
}
