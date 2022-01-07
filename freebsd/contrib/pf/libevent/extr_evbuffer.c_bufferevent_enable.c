
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {short enabled; int timeout_write; int ev_write; int timeout_read; int ev_read; } ;


 short EV_READ ;
 short EV_WRITE ;
 int bufferevent_add (int *,int ) ;

int
bufferevent_enable(struct bufferevent *bufev, short event)
{
 if (event & EV_READ) {
  if (bufferevent_add(&bufev->ev_read, bufev->timeout_read) == -1)
   return (-1);
 }
 if (event & EV_WRITE) {
  if (bufferevent_add(&bufev->ev_write, bufev->timeout_write) == -1)
   return (-1);
 }

 bufev->enabled |= event;
 return (0);
}
