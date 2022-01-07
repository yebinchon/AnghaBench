
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_base_assert_ok_ (struct event_base*) ;
 struct event* event_base_get_running_event (struct event_base*) ;
 int event_base_loopexit (struct event_base*,int *) ;
 struct event_base* event_get_base (struct event*) ;
 int tt_want (int) ;

__attribute__((used)) static void
event_selfarg_cb(evutil_socket_t fd, short event, void *arg)
{
 struct event *ev = arg;
 struct event_base *base = event_get_base(ev);
 event_base_assert_ok_(base);
 event_base_loopexit(base, ((void*)0));
 tt_want(ev == event_base_get_running_event(base));
}
