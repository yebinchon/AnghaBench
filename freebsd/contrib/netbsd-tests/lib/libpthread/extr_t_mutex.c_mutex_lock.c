
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int pthread_mutex_t ;


 int ATF_REQUIRE (int) ;
 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int pthread_mutex_timedlock (int *,struct timespec*) ;
 int timespecadd (struct timespec*,struct timespec const*,struct timespec*) ;

__attribute__((used)) static int
mutex_lock(pthread_mutex_t *m, const struct timespec *ts)
{
 struct timespec ts_wait;
 ATF_REQUIRE(clock_gettime(CLOCK_REALTIME, &ts_wait) != -1);
 timespecadd(&ts_wait, ts, &ts_wait);

 return pthread_mutex_timedlock(m, &ts_wait);
}
