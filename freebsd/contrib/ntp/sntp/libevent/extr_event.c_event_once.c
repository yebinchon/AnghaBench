
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int evutil_socket_t ;


 int current_base ;
 int event_base_once (int ,int ,short,void (*) (int ,short,void*),void*,struct timeval const*) ;

int
event_once(evutil_socket_t fd, short events,
    void (*callback)(evutil_socket_t, short, void *),
    void *arg, const struct timeval *tv)
{
 return event_base_once(current_base, fd, events, callback, arg, tv);
}
