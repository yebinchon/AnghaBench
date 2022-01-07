
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct config_file {int dummy; } ;


 int fatal_exit (char*) ;
 int local_zones_apply_cfg (struct local_zones*,struct config_file*) ;
 struct local_zones* local_zones_create () ;
 int local_zones_delete (struct local_zones*) ;

__attribute__((used)) static void
localzonechecks(struct config_file* cfg)
{
 struct local_zones* zs;
 if(!(zs = local_zones_create()))
  fatal_exit("out of memory");
 if(!local_zones_apply_cfg(zs, cfg))
  fatal_exit("failed local-zone, local-data configuration");
 local_zones_delete(zs);
}
