
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int congestion_control; } ;
struct TYPE_5__ {int port_guid_tbl; TYPE_1__ opt; } ;
struct osm_opensm {int log; int lock; int sm; TYPE_2__ subn; int routing_engine_used; } ;
struct TYPE_6__ {int p_physp; scalar_t__ cc_unavailable_flag; int * p_node; } ;
typedef TYPE_3__ osm_port_t ;
typedef int osm_node_t ;
typedef scalar_t__ ib_api_status_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;


 scalar_t__ IB_NODE_TYPE_CA ;
 scalar_t__ IB_NODE_TYPE_SWITCH ;
 scalar_t__ IB_SUCCESS ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 scalar_t__ cc_send_ca_cong_setting (int *,int *,int ) ;
 scalar_t__ cc_send_cct (int *,int *,int ) ;
 scalar_t__ cc_send_sw_cong_setting (int *,int *) ;
 int cc_setup_mad_data (int *) ;
 int cl_plock_acquire (int *) ;
 int cl_plock_release (int *) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 scalar_t__ osm_node_get_type (int *) ;

int osm_congestion_control_setup(struct osm_opensm *p_osm)
{
 cl_qmap_t *p_tbl;
 cl_map_item_t *p_next;
 int ret = 0;

 if (!p_osm->subn.opt.congestion_control)
  return 0;

 OSM_LOG_ENTER(&p_osm->log);




 if (!p_osm->routing_engine_used)
  return 0;

 cc_setup_mad_data(&p_osm->sm);

 cl_plock_acquire(&p_osm->lock);

 p_tbl = &p_osm->subn.port_guid_tbl;
 p_next = cl_qmap_head(p_tbl);
 while (p_next != cl_qmap_end(p_tbl)) {
  osm_port_t *p_port = (osm_port_t *) p_next;
  osm_node_t *p_node = p_port->p_node;
  ib_api_status_t status;

  p_next = cl_qmap_next(p_next);

  if (p_port->cc_unavailable_flag)
   continue;

  if (osm_node_get_type(p_node) == IB_NODE_TYPE_SWITCH) {
   status = cc_send_sw_cong_setting(&p_osm->sm, p_node);
   if (status != IB_SUCCESS)
    ret = -1;
  } else if (osm_node_get_type(p_node) == IB_NODE_TYPE_CA) {
   status = cc_send_ca_cong_setting(&p_osm->sm,
        p_node,
        p_port->p_physp);
   if (status != IB_SUCCESS)
    ret = -1;

   status = cc_send_cct(&p_osm->sm,
          p_node,
          p_port->p_physp);
   if (status != IB_SUCCESS)
    ret = -1;
  }
 }

 cl_plock_release(&p_osm->lock);

 OSM_LOG_EXIT(&p_osm->log);

 return ret;
}
