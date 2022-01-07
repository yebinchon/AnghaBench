
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int dummy; } ;
struct respip_set {int dummy; } ;
struct config_file {int dummy; } ;


 int fatal_exit (char*) ;
 int respip_global_apply_cfg (struct respip_set*,struct config_file*) ;
 struct respip_set* respip_set_create () ;
 int respip_set_delete (struct respip_set*) ;
 int respip_views_apply_cfg (struct views*,struct config_file*,int*) ;
 int views_apply_cfg (struct views*,struct config_file*) ;
 struct views* views_create () ;
 int views_delete (struct views*) ;

__attribute__((used)) static void
view_and_respipchecks(struct config_file* cfg)
{
 struct views* views = ((void*)0);
 struct respip_set* respip = ((void*)0);
 int ignored = 0;
 if(!(views = views_create()))
  fatal_exit("Could not create views: out of memory");
 if(!(respip = respip_set_create()))
  fatal_exit("Could not create respip set: out of memory");
 if(!views_apply_cfg(views, cfg))
  fatal_exit("Could not set up views");
 if(!respip_global_apply_cfg(respip, cfg))
  fatal_exit("Could not setup respip set");
 if(!respip_views_apply_cfg(views, cfg, &ignored))
  fatal_exit("Could not setup per-view respip sets");
 views_delete(views);
 respip_set_delete(respip);
}
