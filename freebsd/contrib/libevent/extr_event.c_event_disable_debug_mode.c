
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_debug_entry {int dummy; } ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 int HT_CLEAR (int ,int *) ;
 struct event_debug_entry** HT_NEXT_RMV (int ,int *,struct event_debug_entry**) ;
 struct event_debug_entry** HT_START (int ,int *) ;
 int event_debug_map ;
 int event_debug_map_lock_ ;
 scalar_t__ event_debug_mode_on_ ;
 int global_debug_map ;
 int mm_free (struct event_debug_entry*) ;

void
event_disable_debug_mode(void)
{

 struct event_debug_entry **ent, *victim;

 EVLOCK_LOCK(event_debug_map_lock_, 0);
 for (ent = HT_START(event_debug_map, &global_debug_map); ent; ) {
  victim = *ent;
  ent = HT_NEXT_RMV(event_debug_map, &global_debug_map, ent);
  mm_free(victim);
 }
 HT_CLEAR(event_debug_map, &global_debug_map);
 EVLOCK_UNLOCK(event_debug_map_lock_ , 0);

 event_debug_mode_on_ = 0;

}
