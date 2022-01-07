
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct views {int dummy; } ;
struct view {TYPE_2__* respip_set; int lock; } ;
struct config_view {int * respip_data; int * respip_actions; int name; struct config_view* next; } ;
struct config_file {struct config_view* views; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_5__ {TYPE_1__ ip_tree; } ;


 int lock_rw_unlock (int *) ;
 int log_err (char*,...) ;
 int respip_set_apply_cfg (TYPE_2__*,int *,int ,int *,int *,int *) ;
 TYPE_2__* respip_set_create () ;
 struct view* views_find_view (struct views*,int ,int) ;

int
respip_views_apply_cfg(struct views* vs, struct config_file* cfg,
 int* have_view_respip_cfg)
{
 struct config_view* cv;
 struct view* v;
 int ret;

 for(cv = cfg->views; cv; cv = cv->next) {






  if(!cv->respip_actions && !cv->respip_data)
   continue;

  if(!(v = views_find_view(vs, cv->name, 1))) {
   log_err("view '%s' unexpectedly missing", cv->name);
   return 0;
  }
  if(!v->respip_set) {
   v->respip_set = respip_set_create();
   if(!v->respip_set) {
    log_err("out of memory");
    lock_rw_unlock(&v->lock);
    return 0;
   }
  }
  ret = respip_set_apply_cfg(v->respip_set, ((void*)0), 0, ((void*)0),
   cv->respip_actions, cv->respip_data);
  lock_rw_unlock(&v->lock);
  if(!ret) {
   log_err("Error while applying respip configuration "
    "for view '%s'", cv->name);
   return 0;
  }
  *have_view_respip_cfg = (*have_view_respip_cfg ||
   v->respip_set->ip_tree.count);
  cv->respip_actions = ((void*)0);
  cv->respip_data = ((void*)0);
 }
 return 1;
}
