
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct event_base {scalar_t__ last_updated_clock_diff; int tv_clock_diff; int monotonic_timer; struct timeval tv_cache; } ;


 scalar_t__ CLOCK_SYNC_INTERVAL ;
 int EVENT_BASE_ASSERT_LOCKED (struct event_base*) ;
 int evutil_gettime_monotonic_ (int *,struct timeval*) ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timersub (struct timeval*,struct timeval*,int *) ;

__attribute__((used)) static int
gettime(struct event_base *base, struct timeval *tp)
{
 EVENT_BASE_ASSERT_LOCKED(base);

 if (base->tv_cache.tv_sec) {
  *tp = base->tv_cache;
  return (0);
 }

 if (evutil_gettime_monotonic_(&base->monotonic_timer, tp) == -1) {
  return -1;
 }

 if (base->last_updated_clock_diff + CLOCK_SYNC_INTERVAL
     < tp->tv_sec) {
  struct timeval tv;
  evutil_gettimeofday(&tv,((void*)0));
  evutil_timersub(&tv, tp, &base->tv_clock_diff);
  base->last_updated_clock_diff = tp->tv_sec;
 }

 return 0;
}
