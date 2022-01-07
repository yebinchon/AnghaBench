
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {struct config_auth* auths; } ;
struct config_auth {scalar_t__* name; struct config_auth* next; } ;
struct auth_zones {int dummy; } ;


 int auth_zones_cfg (struct auth_zones*,struct config_auth*) ;
 int auth_zones_read_zones (struct auth_zones*,struct config_file*) ;
 int auth_zones_setup_zones (struct auth_zones*) ;
 int az_delete_deleted_zones (struct auth_zones*) ;
 int az_setall_deleted (struct auth_zones*) ;
 int log_err (char*,scalar_t__*) ;
 int log_warn (char*) ;

int auth_zones_apply_cfg(struct auth_zones* az, struct config_file* cfg,
 int setup)
{
 struct config_auth* p;
 az_setall_deleted(az);
 for(p = cfg->auths; p; p = p->next) {
  if(!p->name || p->name[0] == 0) {
   log_warn("auth-zone without a name, skipped");
   continue;
  }
  if(!auth_zones_cfg(az, p)) {
   log_err("cannot config auth zone %s", p->name);
   return 0;
  }
 }
 az_delete_deleted_zones(az);
 if(!auth_zones_read_zones(az, cfg))
  return 0;
 if(setup) {
  if(!auth_zones_setup_zones(az))
   return 0;
 }
 return 1;
}
