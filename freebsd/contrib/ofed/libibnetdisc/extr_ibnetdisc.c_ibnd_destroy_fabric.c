
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_8__ {TYPE_1__* nodes; struct TYPE_8__* next; struct TYPE_8__* chassis; } ;
typedef TYPE_2__ ibnd_fabric_t ;
typedef TYPE_2__ ibnd_chassis_t ;
typedef int f_internal_t ;


 int destroy_lid2guid (int *) ;
 int destroy_node (TYPE_1__*) ;
 int free (TYPE_2__*) ;

void ibnd_destroy_fabric(ibnd_fabric_t * fabric)
{
 ibnd_node_t *node = ((void*)0);
 ibnd_node_t *next = ((void*)0);
 ibnd_chassis_t *ch, *ch_next;

 if (!fabric)
  return;

 ch = fabric->chassis;
 while (ch) {
  ch_next = ch->next;
  free(ch);
  ch = ch_next;
 }
 node = fabric->nodes;
 while (node) {
  next = node->next;
  destroy_node(node);
  node = next;
 }
 destroy_lid2guid((f_internal_t *)fabric);
 free(fabric);
}
