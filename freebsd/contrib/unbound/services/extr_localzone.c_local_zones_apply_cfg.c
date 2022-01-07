
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct config_file {int dummy; } ;


 int init_parents (struct local_zones*) ;
 int local_zone_enter_defaults (struct local_zones*,struct config_file*) ;
 int lz_enter_data (struct local_zones*,struct config_file*) ;
 int lz_enter_overrides (struct local_zones*,struct config_file*) ;
 int lz_enter_zone_tags (struct local_zones*,struct config_file*) ;
 int lz_enter_zones (struct local_zones*,struct config_file*) ;
 int lz_freeup_cfg (struct config_file*) ;
 int lz_setup_implicit (struct local_zones*,struct config_file*) ;

int
local_zones_apply_cfg(struct local_zones* zones, struct config_file* cfg)
{

 if(!lz_enter_zones(zones, cfg)) {
  return 0;
 }

 if(!local_zone_enter_defaults(zones, cfg)) {
  return 0;
 }

 if(!lz_enter_overrides(zones, cfg)) {
  return 0;
 }

 if(!lz_setup_implicit(zones, cfg)) {
  return 0;
 }


 init_parents(zones);

 if(!lz_enter_zone_tags(zones, cfg)) {
  return 0;
 }

 if(!lz_enter_data(zones, cfg)) {
  return 0;
 }

 lz_freeup_cfg(cfg);
 return 1;
}
