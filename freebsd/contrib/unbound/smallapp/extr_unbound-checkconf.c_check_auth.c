
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int dummy; } ;
struct auth_zones {int dummy; } ;


 int auth_zones_apply_cfg (struct auth_zones*,struct config_file*,int ) ;
 struct auth_zones* auth_zones_create () ;
 int auth_zones_delete (struct auth_zones*) ;
 int fatal_exit (char*) ;

__attribute__((used)) static void
check_auth(struct config_file* cfg)
{
 struct auth_zones* az = auth_zones_create();
 if(!az || !auth_zones_apply_cfg(az, cfg, 0)) {
  fatal_exit("Could not setup authority zones");
 }
 auth_zones_delete(az);
}
