
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_fd; } ;
typedef int evutil_socket_t ;


 int event_debug_assert_is_setup_ (struct event const*) ;

evutil_socket_t
event_get_fd(const struct event *ev)
{
 event_debug_assert_is_setup_(ev);
 return ev->ev_fd;
}
