
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int PJDLOG_ASSERT (int) ;
 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static __inline void
cv_wait(pthread_cond_t *cv, pthread_mutex_t *lock)
{
 int error;

 error = pthread_cond_wait(cv, lock);
 PJDLOG_ASSERT(error == 0);
}
