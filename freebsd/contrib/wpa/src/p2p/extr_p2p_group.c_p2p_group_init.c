
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group_config {int cb_ctx; int (* idle_update ) (int ,int) ;} ;
struct p2p_group {int group_formation; int beacon_update; struct p2p_group_config* cfg; struct p2p_data* p2p; } ;
struct p2p_data {struct p2p_group** groups; scalar_t__ num_groups; } ;


 int os_free (struct p2p_group*) ;
 struct p2p_group** os_realloc_array (struct p2p_group**,scalar_t__,int) ;
 struct p2p_group* os_zalloc (int) ;
 int p2p_group_update_ies (struct p2p_group*) ;
 int stub1 (int ,int) ;

struct p2p_group * p2p_group_init(struct p2p_data *p2p,
      struct p2p_group_config *config)
{
 struct p2p_group *group, **groups;

 group = os_zalloc(sizeof(*group));
 if (group == ((void*)0))
  return ((void*)0);

 groups = os_realloc_array(p2p->groups, p2p->num_groups + 1,
      sizeof(struct p2p_group *));
 if (groups == ((void*)0)) {
  os_free(group);
  return ((void*)0);
 }
 groups[p2p->num_groups++] = group;
 p2p->groups = groups;

 group->p2p = p2p;
 group->cfg = config;
 group->group_formation = 1;
 group->beacon_update = 1;
 p2p_group_update_ies(group);
 group->cfg->idle_update(group->cfg->cb_ctx, 1);

 return group;
}
