
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {short enabled; int ev_write; int ev_read; } ;


 short EV_READ ;
 short EV_WRITE ;
 int event_del (int *) ;

int
bufferevent_disable(struct bufferevent *bufev, short event)
{
 if (event & EV_READ) {
  if (event_del(&bufev->ev_read) == -1)
   return (-1);
 }
 if (event & EV_WRITE) {
  if (event_del(&bufev->ev_write) == -1)
   return (-1);
 }

 bufev->enabled &= ~event;
 return (0);
}
