
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int ev_write; int timeout_write; int ev_read; int timeout_read; } ;


 int EV_READ ;
 int EV_WRITE ;
 scalar_t__ be_socket_add (int *,int *) ;
 scalar_t__ event_pending (int *,int ,int *) ;
 int event_remove_timer (int *) ;
 scalar_t__ evutil_timerisset (int *) ;

__attribute__((used)) static int
be_socket_adj_timeouts(struct bufferevent *bufev)
{
 int r = 0;
 if (event_pending(&bufev->ev_read, EV_READ, ((void*)0))) {
  if (evutil_timerisset(&bufev->timeout_read)) {
       if (be_socket_add(&bufev->ev_read, &bufev->timeout_read) < 0)
        r = -1;
  } else {
   event_remove_timer(&bufev->ev_read);
  }
 }
 if (event_pending(&bufev->ev_write, EV_WRITE, ((void*)0))) {
  if (evutil_timerisset(&bufev->timeout_write)) {
   if (be_socket_add(&bufev->ev_write, &bufev->timeout_write) < 0)
    r = -1;
  } else {
   event_remove_timer(&bufev->ev_write);
  }
 }
 return r;
}
