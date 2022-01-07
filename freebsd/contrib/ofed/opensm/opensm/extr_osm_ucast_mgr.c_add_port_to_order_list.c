
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int port_order_list; TYPE_2__* p_subn; } ;
typedef TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_8__ {scalar_t__ flag; int list_item; int use_scatter; } ;
typedef TYPE_4__ osm_port_t ;
typedef int cl_map_item_t ;
struct TYPE_5__ {int scatter_ports; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;


 int cl_qlist_insert_tail (int *,int *) ;

__attribute__((used)) static void add_port_to_order_list(cl_map_item_t * p_map_item, void *ctx)
{
 osm_port_t *port = (osm_port_t *) p_map_item;
 osm_ucast_mgr_t *m = ctx;

 if (!port->flag) {
  port->use_scatter = m->p_subn->opt.scatter_ports;
  cl_qlist_insert_tail(&m->port_order_list, &port->list_item);
 } else
  port->flag = 0;
}
