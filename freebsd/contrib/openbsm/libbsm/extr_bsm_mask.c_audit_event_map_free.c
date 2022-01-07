
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_event_map {int dummy; } ;


 int free (struct audit_event_map*) ;

__attribute__((used)) static void
audit_event_map_free(struct audit_event_map *aemp)
{

 free(aemp);
}
