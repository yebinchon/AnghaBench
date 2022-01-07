
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct event {int dummy; } ;


 int event_add (struct event*,struct timeval*) ;
 int timerclear (struct timeval*) ;

__attribute__((used)) static int
bufferevent_add(struct event *ev, int timeout)
{
 struct timeval tv, *ptv = ((void*)0);

 if (timeout) {
  timerclear(&tv);
  tv.tv_sec = timeout;
  ptv = &tv;
 }

 return (event_add(ev, ptv));
}
