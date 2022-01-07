
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {TYPE_10__* p_subn; int port_order_list; } ;
typedef TYPE_4__ osm_ucast_mgr_t ;
struct TYPE_18__ {int num_ports; int p_node; } ;
typedef TYPE_5__ osm_switch_t ;
struct TYPE_19__ {int flag; int use_scatter; int list_item; } ;
typedef TYPE_6__ osm_port_t ;
struct TYPE_20__ {TYPE_2__* p_remote_physp; } ;
typedef TYPE_7__ osm_physp_t ;
struct TYPE_16__ {int scatter_ports; } ;
struct TYPE_15__ {int port_guid; TYPE_1__* p_node; } ;
struct TYPE_14__ {int sw; } ;
struct TYPE_13__ {TYPE_3__ opt; } ;


 int cl_qlist_insert_tail (int *,int *) ;
 TYPE_6__* osm_get_port_by_guid (TYPE_10__*,int ) ;
 TYPE_7__* osm_node_get_physp_ptr (int ,int) ;

__attribute__((used)) static void add_sw_endports_to_order_list(osm_switch_t * sw,
       osm_ucast_mgr_t * m)
{
 osm_port_t *port;
 osm_physp_t *p;
 int i;

 for (i = 1; i < sw->num_ports; i++) {
  p = osm_node_get_physp_ptr(sw->p_node, i);
  if (p && p->p_remote_physp && !p->p_remote_physp->p_node->sw) {
   port = osm_get_port_by_guid(m->p_subn,
          p->p_remote_physp->
          port_guid);
   if (!port || port->flag)
    continue;
   cl_qlist_insert_tail(&m->port_order_list,
          &port->list_item);
   port->flag = 1;
   port->use_scatter = m->p_subn->opt.scatter_ports;
  }
 }
}
