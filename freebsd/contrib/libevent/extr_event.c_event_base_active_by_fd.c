
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 short EV_CLOSED ;
 short EV_READ ;
 short EV_WRITE ;
 int evmap_io_active_ (struct event_base*,int ,short) ;
 int th_base_lock ;

void
event_base_active_by_fd(struct event_base *base, evutil_socket_t fd, short events)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 evmap_io_active_(base, fd, events & (EV_READ|EV_WRITE|EV_CLOSED));
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
