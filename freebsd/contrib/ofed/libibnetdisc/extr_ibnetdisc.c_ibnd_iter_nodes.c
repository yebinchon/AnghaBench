
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ ibnd_node_t ;
typedef int (* ibnd_iter_node_func_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {TYPE_1__* nodes; } ;
typedef TYPE_3__ ibnd_fabric_t ;


 int IBND_DEBUG (char*) ;

void ibnd_iter_nodes(ibnd_fabric_t * fabric, ibnd_iter_node_func_t func,
       void *user_data)
{
 ibnd_node_t *cur = ((void*)0);

 if (!fabric) {
  IBND_DEBUG("fabric parameter NULL\n");
  return;
 }

 if (!func) {
  IBND_DEBUG("func parameter NULL\n");
  return;
 }

 for (cur = fabric->nodes; cur; cur = cur->next)
  func(cur, user_data);
}
