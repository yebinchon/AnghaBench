
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct guids {scalar_t__ before; scalar_t__ after; int found; } ;
struct TYPE_4__ {scalar_t__ guid; scalar_t__ type; } ;
typedef TYPE_1__ ibnd_node_t ;


 scalar_t__ IB_NODE_SWITCH ;
 int update_switchportguids (TYPE_1__*) ;

__attribute__((used)) static void replace_node_guid(ibnd_node_t *node, void *user_data)
{
 struct guids *guids;

 guids = (struct guids *)user_data;

 if (node->guid == guids->before) {

  node->guid = guids->after;




  if (node->type == IB_NODE_SWITCH)
   update_switchportguids(node);

  guids->found++;
 }
}
