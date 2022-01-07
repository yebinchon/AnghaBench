
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_condattr_t ;
typedef int pthread_cond_t ;


 int CLOCK_MONOTONIC ;
 int PJDLOG_ASSERT (int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_condattr_destroy (int *) ;
 int pthread_condattr_init (int *) ;
 int pthread_condattr_setclock (int *,int ) ;

__attribute__((used)) static __inline void
cv_init(pthread_cond_t *cv)
{
 pthread_condattr_t attr;
 int error;

 error = pthread_condattr_init(&attr);
 PJDLOG_ASSERT(error == 0);




 error = pthread_cond_init(cv, &attr);
 PJDLOG_ASSERT(error == 0);
 error = pthread_condattr_destroy(&attr);
 PJDLOG_ASSERT(error == 0);
}
