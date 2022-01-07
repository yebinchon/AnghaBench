
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int PTHREAD_CANCELED ;
 scalar_t__ SHOULD_CANCEL (struct pthread*) ;
 int THR_IN_CRITICAL (struct pthread*) ;
 scalar_t__ __predict_false (int) ;
 int _pthread_exit (int ) ;

__attribute__((used)) static inline void
testcancel(struct pthread *curthread)
{
 if (__predict_false(SHOULD_CANCEL(curthread) &&
     !THR_IN_CRITICAL(curthread)))
  _pthread_exit(PTHREAD_CANCELED);
}
