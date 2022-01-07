
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int cond_wait_common (int *,int *,int *,int ) ;

int
_thr_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex)
{

 return (cond_wait_common(cond, mutex, ((void*)0), 0));
}
