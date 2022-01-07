
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_group {scalar_t__ num_members; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ max_clients; } ;



int p2p_client_limit_reached(struct p2p_group *group)
{
 if (!group || !group->cfg)
  return 1;

 return group->num_members >= group->cfg->max_clients;
}
