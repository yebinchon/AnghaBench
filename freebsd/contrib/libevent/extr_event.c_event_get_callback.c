
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_callback; } ;
typedef int event_callback_fn ;


 int event_debug_assert_is_setup_ (struct event const*) ;

event_callback_fn
event_get_callback(const struct event *ev)
{
 event_debug_assert_is_setup_(ev);
 return ev->ev_callback;
}
