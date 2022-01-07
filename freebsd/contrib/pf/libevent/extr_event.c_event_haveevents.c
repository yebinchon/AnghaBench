
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ event_count; } ;



int
event_haveevents(struct event_base *base)
{
 return (base->event_count > 0);
}
