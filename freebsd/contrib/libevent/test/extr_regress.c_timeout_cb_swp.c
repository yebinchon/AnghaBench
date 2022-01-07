
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int SIGUSR1 ;
 int called ;
 int event_loopexit (int *) ;
 int evtimer_add (struct event*,struct timeval*) ;
 int raise (int ) ;
 scalar_t__ test_ok ;

__attribute__((used)) static void
timeout_cb_swp(evutil_socket_t fd, short event, void *arg)
{
 if (called == -1) {
  struct timeval tv = {5, 0};

  called = 0;
  evtimer_add((struct event *)arg, &tv);
  raise(SIGUSR1);
  return;
 }
 test_ok = 0;
 event_loopexit(((void*)0));
}
