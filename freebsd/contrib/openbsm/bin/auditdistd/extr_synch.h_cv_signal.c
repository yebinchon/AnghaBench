
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_cond_t ;


 int PJDLOG_ASSERT (int) ;
 int pthread_cond_signal (int *) ;

__attribute__((used)) static __inline void
cv_signal(pthread_cond_t *cv)
{
 int error;

 error = pthread_cond_signal(cv);
 PJDLOG_ASSERT(error == 0);
}
