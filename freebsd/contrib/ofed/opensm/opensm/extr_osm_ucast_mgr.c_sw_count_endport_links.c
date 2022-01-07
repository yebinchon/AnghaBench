
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int num_ports; scalar_t__ endport_links; int p_node; } ;
typedef TYPE_3__ osm_switch_t ;
struct TYPE_10__ {TYPE_2__* p_remote_physp; } ;
typedef TYPE_4__ osm_physp_t ;
struct TYPE_8__ {TYPE_1__* p_node; } ;
struct TYPE_7__ {int sw; } ;


 TYPE_4__* osm_node_get_physp_ptr (int ,int) ;

__attribute__((used)) static void sw_count_endport_links(osm_switch_t * sw)
{
 osm_physp_t *p;
 int i;

 sw->endport_links = 0;
 for (i = 1; i < sw->num_ports; i++) {
  p = osm_node_get_physp_ptr(sw->p_node, i);
  if (p && p->p_remote_physp && !p->p_remote_physp->p_node->sw)
   sw->endport_links++;
 }
}
