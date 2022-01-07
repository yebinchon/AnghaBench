
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct event {int dummy; } ;


 int event_add (struct event*,struct timeval const*) ;

int
bufferevent_add_event_(struct event *ev, const struct timeval *tv)
{
 if (tv->tv_sec == 0 && tv->tv_usec == 0)
  return event_add(ev, ((void*)0));
 else
  return event_add(ev, tv);
}
