
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int ev_write; int ev_read; } ;


 int event_base_set (struct event_base*,int *) ;

int
bufferevent_base_set(struct event_base *base, struct bufferevent *bufev)
{
 int res;

 res = event_base_set(base, &bufev->ev_read);
 if (res == -1)
  return (res);

 res = event_base_set(base, &bufev->ev_write);
 return (res);
}
