
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_view {int local_data; int local_zones_nodefault; int local_zones; struct config_view* name; } ;


 int config_deldblstrlist (int ) ;
 int config_delstrlist (int ) ;
 int free (struct config_view*) ;

void
config_delview(struct config_view* p)
{
 if(!p) return;
 free(p->name);
 config_deldblstrlist(p->local_zones);
 config_delstrlist(p->local_zones_nodefault);
 config_delstrlist(p->local_data);
 free(p);
}
