
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int ETIMEDOUT ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timeradd (struct timeval*,struct timeval const*,struct timeval*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static int
evthread_posix_cond_wait(void *cond_, void *lock_, const struct timeval *tv)
{
 int r;
 pthread_cond_t *cond = cond_;
 pthread_mutex_t *lock = lock_;

 if (tv) {
  struct timeval now, abstime;
  struct timespec ts;
  evutil_gettimeofday(&now, ((void*)0));
  evutil_timeradd(&now, tv, &abstime);
  ts.tv_sec = abstime.tv_sec;
  ts.tv_nsec = abstime.tv_usec*1000;
  r = pthread_cond_timedwait(cond, lock, &ts);
  if (r == ETIMEDOUT)
   return 1;
  else if (r)
   return -1;
  else
   return 0;
 } else {
  r = pthread_cond_wait(cond, lock);
  return r ? -1 : 0;
 }
}
