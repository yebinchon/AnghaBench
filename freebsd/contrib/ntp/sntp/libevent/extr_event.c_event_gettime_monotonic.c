
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event_base {int monotonic_timer; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int evutil_gettime_monotonic_ (int *,struct timeval*) ;
 int th_base_lock ;

int
event_gettime_monotonic(struct event_base *base, struct timeval *tv)
{
  int rv = -1;

  if (base && tv) {
    EVBASE_ACQUIRE_LOCK(base, th_base_lock);
    rv = evutil_gettime_monotonic_(&(base->monotonic_timer), tv);
    EVBASE_RELEASE_LOCK(base, th_base_lock);
  }

  return rv;
}
