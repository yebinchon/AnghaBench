
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_event_map {int ev; } ;
struct au_event_ent {int dummy; } ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct audit_event_map*,int ) ;
 struct audit_event_map* audit_event_map_alloc () ;
 int audit_event_map_free (struct audit_event_map*) ;
 int ev_cache ;
 int ev_list ;
 int flush_cache () ;
 struct au_event_ent* getauevent_r (int *) ;
 int setauevent () ;

__attribute__((used)) static int
load_event_table(void)
{
 struct audit_event_map *aemp;
 struct au_event_ent *ep;






 LIST_INIT(&ev_cache);
 setauevent();
 do {
  aemp = audit_event_map_alloc();
  if (aemp == ((void*)0)) {
   flush_cache();
   return (-1);
  }
  ep = getauevent_r(&aemp->ev);
  if (ep != ((void*)0))
   LIST_INSERT_HEAD(&ev_cache, aemp, ev_list);
  else
   audit_event_map_free(aemp);
 } while (ep != ((void*)0));
 return (1);
}
