
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct respip_set {int dummy; } ;
struct config_file {int * respip_tags; int * respip_actions; int * respip_data; int num_tags; int tagname; } ;


 int respip_set_apply_cfg (struct respip_set*,int ,int ,int *,int *,int *) ;

int
respip_global_apply_cfg(struct respip_set* set, struct config_file* cfg)
{
 int ret = respip_set_apply_cfg(set, cfg->tagname, cfg->num_tags,
  cfg->respip_tags, cfg->respip_actions, cfg->respip_data);
 cfg->respip_data = ((void*)0);
 cfg->respip_actions = ((void*)0);
 cfg->respip_tags = ((void*)0);
 return ret;
}
