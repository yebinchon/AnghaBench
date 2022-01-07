
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int EINVAL ;
 int cond_wait_common (int *,int *,struct timespec const*,int ) ;

int
_thr_cond_timedwait(pthread_cond_t * __restrict cond,
    pthread_mutex_t * __restrict mutex,
    const struct timespec * __restrict abstime)
{

 if (abstime == ((void*)0) || abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
     abstime->tv_nsec >= 1000000000)
  return (EINVAL);

 return (cond_wait_common(cond, mutex, abstime, 0));
}
