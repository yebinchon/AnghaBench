
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int EV_READ ;
 int event_active (struct event*,int ,int) ;

__attribute__((used)) static void
activate_cb(evutil_socket_t fd, short event, void *arg)
{
 struct event *ev = arg;
 event_active(ev, EV_READ, 1);
}
