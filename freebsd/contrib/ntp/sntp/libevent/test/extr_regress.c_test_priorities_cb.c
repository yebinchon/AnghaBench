
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct test_pri_event {int count; int ev; } ;
typedef int evutil_socket_t ;


 int event_add (int *,struct timeval*) ;
 int event_loopexit (int *) ;
 int evutil_timerclear (struct timeval*) ;

__attribute__((used)) static void
test_priorities_cb(evutil_socket_t fd, short what, void *arg)
{
 struct test_pri_event *pri = arg;
 struct timeval tv;

 if (pri->count == 3) {
  event_loopexit(((void*)0));
  return;
 }

 pri->count++;

 evutil_timerclear(&tv);
 event_add(&pri->ev, &tv);
}
