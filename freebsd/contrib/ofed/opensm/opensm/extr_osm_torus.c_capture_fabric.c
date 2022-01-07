
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct fabric {TYPE_1__* osm; } ;
struct TYPE_12__ {int * p_node; int * priv; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_13__ {int sw_guid_tbl; int port_guid_tbl; } ;
typedef TYPE_3__ osm_subn_t ;
struct TYPE_14__ {TYPE_5__* p_physp; int * priv; } ;
typedef TYPE_4__ osm_port_t ;
struct TYPE_15__ {scalar_t__ port_num; int * p_node; struct TYPE_15__* p_remote_physp; } ;
typedef TYPE_5__ osm_physp_t ;
typedef int osm_node_t ;
typedef int guid_t ;
typedef int cl_map_item_t ;
struct TYPE_11__ {int log; TYPE_3__ subn; } ;


 scalar_t__ IB_NODE_TYPE_CA ;
 scalar_t__ IB_NODE_TYPE_ROUTER ;
 scalar_t__ IB_NODE_TYPE_SWITCH ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 int alloc_fswitch (struct fabric*,int ,int) ;
 int build_ca_link (struct fabric*,TYPE_4__*,int ,int ) ;
 int build_link (struct fabric*,int ,int ,int ,int ) ;
 int build_sw_endpoint (struct fabric*,TYPE_4__*) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 int osm_node_get_node_guid (int *) ;
 int osm_node_get_num_physp (int *) ;
 TYPE_5__* osm_node_get_physp_ptr (int *,int) ;
 scalar_t__ osm_node_get_type (int *) ;
 int osm_physp_get_port_num (TYPE_5__*) ;
 scalar_t__ osm_physp_is_valid (TYPE_5__*) ;

__attribute__((used)) static
bool capture_fabric(struct fabric *fabric)
{
 osm_subn_t *subnet = &fabric->osm->subn;
 osm_switch_t *osm_sw;
 osm_physp_t *lphysp, *rphysp;
 osm_port_t *lport;
 osm_node_t *osm_node;
 cl_map_item_t *item;
 uint8_t ltype, rtype;
 int p, port_cnt;
 guid_t sw_guid;
 bool success = 1;

 OSM_LOG_ENTER(&fabric->osm->log);
 item = cl_qmap_head(&subnet->sw_guid_tbl);
 while (item != cl_qmap_end(&subnet->sw_guid_tbl)) {

  osm_sw = (osm_switch_t *)item;
  item = cl_qmap_next(item);
  osm_sw->priv = ((void*)0);
  osm_node = osm_sw->p_node;

  if (osm_node_get_type(osm_node) != IB_NODE_TYPE_SWITCH)
   continue;

  port_cnt = osm_node_get_num_physp(osm_node);
  sw_guid = osm_node_get_node_guid(osm_node);

  success = alloc_fswitch(fabric, sw_guid, port_cnt);
  if (!success)
   goto out;
 }



 item = cl_qmap_head(&subnet->port_guid_tbl);
 while (item != cl_qmap_end(&subnet->port_guid_tbl)) {

  lport = (osm_port_t *)item;
  item = cl_qmap_next(item);
  lport->priv = ((void*)0);

  lphysp = lport->p_physp;
  if (!(lphysp && osm_physp_is_valid(lphysp)))
   continue;

  ltype = osm_node_get_type(lphysp->p_node);



  if (lphysp->port_num == 0 && ltype == IB_NODE_TYPE_SWITCH) {
   success = build_sw_endpoint(fabric, lport);
   if (!success)
    goto out;
   continue;
  }
  rphysp = lphysp->p_remote_physp;
  if (!(rphysp && osm_physp_is_valid(rphysp)))
   continue;

  rtype = osm_node_get_type(rphysp->p_node);

  if ((ltype != IB_NODE_TYPE_CA &&
       ltype != IB_NODE_TYPE_ROUTER) ||
      rtype != IB_NODE_TYPE_SWITCH)
   continue;

  success =
   build_ca_link(fabric, lport,
          osm_node_get_node_guid(rphysp->p_node),
          osm_physp_get_port_num(rphysp));
  if (!success)
   goto out;
 }



 item = cl_qmap_head(&subnet->sw_guid_tbl);
 while (item != cl_qmap_end(&subnet->sw_guid_tbl)) {

  osm_sw = (osm_switch_t *)item;
  item = cl_qmap_next(item);

  port_cnt = osm_node_get_num_physp(osm_sw->p_node);
  for (p = 0; p < port_cnt; p++) {

   lphysp = osm_node_get_physp_ptr(osm_sw->p_node, p);
   if (!(lphysp && osm_physp_is_valid(lphysp)))
    continue;

   rphysp = lphysp->p_remote_physp;
   if (!(rphysp && osm_physp_is_valid(rphysp)))
    continue;

   if (lphysp == rphysp)
    continue;

   ltype = osm_node_get_type(lphysp->p_node);
   rtype = osm_node_get_type(rphysp->p_node);

   if (ltype != IB_NODE_TYPE_SWITCH ||
       rtype != IB_NODE_TYPE_SWITCH)
    continue;

   success =
    build_link(fabric,
        osm_node_get_node_guid(lphysp->p_node),
        osm_physp_get_port_num(lphysp),
        osm_node_get_node_guid(rphysp->p_node),
        osm_physp_get_port_num(rphysp));
   if (!success)
    goto out;
  }
 }
out:
 OSM_LOG_EXIT(&fabric->osm->log);
 return success;
}
