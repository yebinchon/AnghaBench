
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int * local_data; int * local_zones_nodefault; int * local_zones; } ;


 int config_deldblstrlist (int *) ;
 int config_delstrlist (int *) ;

__attribute__((used)) static void
lz_freeup_cfg(struct config_file* cfg)
{
 config_deldblstrlist(cfg->local_zones);
 cfg->local_zones = ((void*)0);
 config_delstrlist(cfg->local_zones_nodefault);
 cfg->local_zones_nodefault = ((void*)0);
 config_delstrlist(cfg->local_data);
 cfg->local_data = ((void*)0);
}
