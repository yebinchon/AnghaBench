
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EVENT_DEL_AUTOBLOCK ;
 int event_del_ (struct event*,int ) ;

int
event_del(struct event *ev)
{
 return event_del_(ev, EVENT_DEL_AUTOBLOCK);
}
