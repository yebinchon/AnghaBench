
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {short ev_events; } ;


 int event_debug_assert_is_setup_ (struct event const*) ;

short
event_get_events(const struct event *ev)
{
 event_debug_assert_is_setup_(ev);
 return ev->ev_events;
}
