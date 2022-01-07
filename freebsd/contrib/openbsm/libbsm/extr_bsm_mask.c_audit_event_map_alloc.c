
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ae_desc; int ae_name; } ;
struct audit_event_map {int ev_desc; TYPE_1__ ev; int ev_name; } ;


 int bzero (struct audit_event_map*,int) ;
 struct audit_event_map* malloc (int) ;

__attribute__((used)) static struct audit_event_map *
audit_event_map_alloc(void)
{
 struct audit_event_map *aemp;

 aemp = malloc(sizeof(*aemp));
 if (aemp == ((void*)0))
  return (aemp);
 bzero(aemp, sizeof(*aemp));
 aemp->ev.ae_name = aemp->ev_name;
 aemp->ev.ae_desc = aemp->ev_desc;
 return (aemp);
}
