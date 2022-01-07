
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int EV_READ ;
 int event_active_later_ (struct event*,int ) ;
 int n_activate_other_event_cb ;

__attribute__((used)) static void
activate_other_event_cb(evutil_socket_t fd, short what, void *other_)
{
 struct event *ev_activate = other_;
 ++n_activate_other_event_cb;
 event_active_later_(ev_activate, EV_READ);
}
