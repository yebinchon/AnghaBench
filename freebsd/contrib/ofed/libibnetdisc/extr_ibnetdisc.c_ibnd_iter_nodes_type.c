
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* type_next; } ;
typedef TYPE_1__ ibnd_node_t ;
typedef int (* ibnd_iter_node_func_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {TYPE_1__* routers; TYPE_1__* ch_adapters; TYPE_1__* switches; } ;
typedef TYPE_3__ ibnd_fabric_t ;


 int IBND_DEBUG (char*,...) ;




void ibnd_iter_nodes_type(ibnd_fabric_t * fabric, ibnd_iter_node_func_t func,
     int node_type, void *user_data)
{
 ibnd_node_t *list = ((void*)0);
 ibnd_node_t *cur = ((void*)0);

 if (!fabric) {
  IBND_DEBUG("fabric parameter NULL\n");
  return;
 }

 if (!func) {
  IBND_DEBUG("func parameter NULL\n");
  return;
 }

 switch (node_type) {
 case 128:
  list = fabric->switches;
  break;
 case 130:
  list = fabric->ch_adapters;
  break;
 case 129:
  list = fabric->routers;
  break;
 default:
  IBND_DEBUG("Invalid node_type specified %d\n", node_type);
  break;
 }

 for (cur = list; cur; cur = cur->type_next)
  func(cur, user_data);
}
