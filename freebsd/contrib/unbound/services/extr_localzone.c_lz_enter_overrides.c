
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct config_str3list {int str3; int str2; int str; struct config_str3list* next; } ;
struct config_file {struct config_str3list* local_zone_overrides; } ;


 int LDNS_RR_CLASS_IN ;
 int lz_enter_override (struct local_zones*,int ,int ,int ,int ) ;

__attribute__((used)) static int
lz_enter_overrides(struct local_zones* zones, struct config_file* cfg)
{
 struct config_str3list* p;
 for(p = cfg->local_zone_overrides; p; p = p->next) {
  if(!lz_enter_override(zones, p->str, p->str2, p->str3,
   LDNS_RR_CLASS_IN))
   return 0;
 }
 return 1;
}
