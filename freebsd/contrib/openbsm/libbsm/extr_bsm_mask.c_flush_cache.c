
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_event_map {int dummy; } ;


 struct audit_event_map* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct audit_event_map*,int ) ;
 int audit_event_map_free (struct audit_event_map*) ;
 int ev_cache ;
 int ev_list ;

__attribute__((used)) static void
flush_cache(void)
{
 struct audit_event_map *aemp;



 while ((aemp = LIST_FIRST(&ev_cache)) != ((void*)0)) {
  LIST_REMOVE(aemp, ev_list);
  audit_event_map_free(aemp);
 }
}
