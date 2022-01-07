
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
typedef int pthread_t ;


 int EINVAL ;
 int join_common (int ,void**,struct timespec const*) ;

int
_pthread_timedjoin_np(pthread_t pthread, void **thread_return,
 const struct timespec *abstime)
{
 if (abstime == ((void*)0) || abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
     abstime->tv_nsec >= 1000000000)
  return (EINVAL);

 return (join_common(pthread, thread_return, abstime));
}
