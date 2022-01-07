
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int is_mc_member; int p_node; } ;
typedef TYPE_1__ osm_switch_t ;
struct TYPE_9__ {int p_log; } ;
typedef TYPE_2__ osm_sm_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;


 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 TYPE_1__* cl_item_obj (int *,TYPE_1__*,int ) ;
 int cl_ntoh16 (int ) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 int mgrp_item ;
 int osm_node_get_base_lid (int ,int ) ;
 scalar_t__ osm_switch_get_least_hops (TYPE_1__ const*,int ) ;

__attribute__((used)) static float mcast_mgr_compute_max_hops(osm_sm_t * sm, cl_qmap_t * m,
     const osm_switch_t * this_sw)
{
 uint32_t max_hops = 0, hops;
 uint16_t lid;
 cl_map_item_t *i;
 osm_switch_t *sw;

 OSM_LOG_ENTER(sm->p_log);





 for (i = cl_qmap_head(m); i != cl_qmap_end(m); i = cl_qmap_next(i)) {
  sw = cl_item_obj(i, sw, mgrp_item);
  lid = cl_ntoh16(osm_node_get_base_lid(sw->p_node, 0));
  hops = osm_switch_get_least_hops(this_sw, lid);
  if (!sw->is_mc_member)
   hops += 1;
  if (hops > max_hops)
   max_hops = hops;
 }





 OSM_LOG_EXIT(sm->p_log);
 return (float)max_hops;
}
