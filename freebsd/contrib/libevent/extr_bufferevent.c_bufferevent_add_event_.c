
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event {int dummy; } ;


 int event_add (struct event*,struct timeval const*) ;
 int evutil_timerisset (struct timeval const*) ;

int
bufferevent_add_event_(struct event *ev, const struct timeval *tv)
{
 if (!evutil_timerisset(tv))
  return event_add(ev, ((void*)0));
 else
  return event_add(ev, tv);
}
