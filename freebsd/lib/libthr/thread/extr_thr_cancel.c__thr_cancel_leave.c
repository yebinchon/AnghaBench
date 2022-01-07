
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ cancel_point; } ;


 int PTHREAD_CANCELED ;
 scalar_t__ SHOULD_CANCEL (struct pthread*) ;
 int THR_IN_CRITICAL (struct pthread*) ;
 scalar_t__ __predict_false (int) ;
 int _pthread_exit (int ) ;

void
_thr_cancel_leave(struct pthread *curthread, int maycancel)
{
 curthread->cancel_point = 0;
 if (__predict_false(SHOULD_CANCEL(curthread) &&
     !THR_IN_CRITICAL(curthread) && maycancel))
  _pthread_exit(PTHREAD_CANCELED);
}
