
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_ports; int p_node; } ;
typedef TYPE_1__ osm_switch_t ;
struct TYPE_5__ {int hop_wf; } ;
typedef TYPE_2__ osm_physp_t ;
typedef int cl_map_item_t ;


 TYPE_2__* osm_node_get_physp_ptr (int ,int) ;

__attribute__((used)) static void set_default_hop_wf(cl_map_item_t * p_map_item, void *ctx)
{
 osm_switch_t *sw = (osm_switch_t *) p_map_item;
 int i;

 for (i = 1; i < sw->num_ports; i++) {
  osm_physp_t *p = osm_node_get_physp_ptr(sw->p_node, i);
  if (p)
   p->hop_wf = 1;
 }
}
