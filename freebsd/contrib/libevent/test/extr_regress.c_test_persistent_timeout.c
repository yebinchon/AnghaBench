
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct event {int dummy; } ;


 int EV_PERSIST ;
 int EV_TIMEOUT ;
 int event_add (struct event*,struct timeval*) ;
 int event_assign (struct event*,int ,int,int,int ,int*) ;
 int event_del (struct event*) ;
 int event_dispatch () ;
 int evutil_timerclear (struct timeval*) ;
 int global_base ;
 int periodic_timeout_cb ;

__attribute__((used)) static void
test_persistent_timeout(void)
{
 struct timeval tv;
 struct event ev;
 int count = 0;

 evutil_timerclear(&tv);
 tv.tv_usec = 10000;

 event_assign(&ev, global_base, -1, EV_TIMEOUT|EV_PERSIST,
     periodic_timeout_cb, &count);
 event_add(&ev, &tv);

 event_dispatch();

 event_del(&ev);
}
