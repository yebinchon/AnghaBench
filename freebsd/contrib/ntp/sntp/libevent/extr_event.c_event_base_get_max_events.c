
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ event_count_max; scalar_t__ virtual_event_count_max; scalar_t__ event_count_active_max; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 unsigned int EVENT_BASE_COUNT_ACTIVE ;
 unsigned int EVENT_BASE_COUNT_ADDED ;
 unsigned int EVENT_BASE_COUNT_VIRTUAL ;
 int th_base_lock ;

int
event_base_get_max_events(struct event_base *base, unsigned int type, int clear)
{
 int r = 0;

 EVBASE_ACQUIRE_LOCK(base, th_base_lock);

 if (type & EVENT_BASE_COUNT_ACTIVE) {
  r += base->event_count_active_max;
  if (clear)
   base->event_count_active_max = 0;
 }

 if (type & EVENT_BASE_COUNT_VIRTUAL) {
  r += base->virtual_event_count_max;
  if (clear)
   base->virtual_event_count_max = 0;
 }

 if (type & EVENT_BASE_COUNT_ADDED) {
  r += base->event_count_max;
  if (clear)
   base->event_count_max = 0;
 }

 EVBASE_RELEASE_LOCK(base, th_base_lock);

 return r;
}
