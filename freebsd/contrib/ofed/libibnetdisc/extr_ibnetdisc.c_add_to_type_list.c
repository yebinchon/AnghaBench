
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; struct TYPE_6__* type_next; } ;
typedef TYPE_1__ ibnd_node_t ;
struct TYPE_7__ {TYPE_1__* routers; TYPE_1__* switches; TYPE_1__* ch_adapters; } ;
typedef TYPE_2__ ibnd_fabric_t ;
struct TYPE_8__ {TYPE_2__ fabric; } ;
typedef TYPE_3__ f_internal_t ;






void add_to_type_list(ibnd_node_t * node, f_internal_t * f_int)
{
 ibnd_fabric_t *fabric = &f_int->fabric;
 switch (node->type) {
 case 130:
  node->type_next = fabric->ch_adapters;
  fabric->ch_adapters = node;
  break;
 case 128:
  node->type_next = fabric->switches;
  fabric->switches = node;
  break;
 case 129:
  node->type_next = fabric->routers;
  fabric->routers = node;
  break;
 }
}
