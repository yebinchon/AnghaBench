
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int ev_write; int ev_read; } ;


 int event_priority_set (int *,int) ;

int
bufferevent_priority_set(struct bufferevent *bufev, int priority)
{
 if (event_priority_set(&bufev->ev_read, priority) == -1)
  return (-1);
 if (event_priority_set(&bufev->ev_write, priority) == -1)
  return (-1);

 return (0);
}
