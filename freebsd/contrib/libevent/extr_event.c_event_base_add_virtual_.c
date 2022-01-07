
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int virtual_event_count; int virtual_event_count_max; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int MAX_EVENT_COUNT (int ,int ) ;
 int th_base_lock ;

void
event_base_add_virtual_(struct event_base *base)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 base->virtual_event_count++;
 MAX_EVENT_COUNT(base->virtual_event_count_max, base->virtual_event_count);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
