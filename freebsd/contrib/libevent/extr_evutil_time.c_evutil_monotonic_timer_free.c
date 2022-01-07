
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_monotonic_timer {int dummy; } ;


 int mm_free (struct evutil_monotonic_timer*) ;

void
evutil_monotonic_timer_free(struct evutil_monotonic_timer *timer)
{
  if (timer) {
    mm_free(timer);
  }
}
