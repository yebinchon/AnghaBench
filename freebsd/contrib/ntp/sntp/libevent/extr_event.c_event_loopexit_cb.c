
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int event_gotterm; } ;
typedef int evutil_socket_t ;



__attribute__((used)) static void
event_loopexit_cb(evutil_socket_t fd, short what, void *arg)
{
 struct event_base *base = arg;
 base->event_gotterm = 1;
}
