
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int ev_base; int ev_read; } ;


 int event_base_get_npriorities (int ) ;
 int event_get_priority (int *) ;
 scalar_t__ event_initialized (int *) ;

int
bufferevent_get_priority(const struct bufferevent *bufev)
{
 if (event_initialized(&bufev->ev_read)) {
  return event_get_priority(&bufev->ev_read);
 } else {
  return event_base_get_npriorities(bufev->ev_base) / 2;
 }
}
