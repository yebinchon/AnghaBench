
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_16__ {int p_log; int cache_sw_tbl; } ;
typedef TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_17__ {size_t port_num; TYPE_7__* p_node; } ;
typedef TYPE_4__ osm_physp_t ;
struct TYPE_18__ {size_t num_ports; TYPE_2__* ports; int map_item; } ;
typedef TYPE_5__ cache_switch_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_1__* sw; } ;
struct TYPE_15__ {scalar_t__ remote_lid_ho; scalar_t__ is_leaf; } ;
struct TYPE_14__ {int num_ports; } ;


 int OSM_LOG (int ,int ,char*,...) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 TYPE_5__* cache_get_sw (TYPE_3__*,scalar_t__) ;
 TYPE_5__* cache_sw_new (scalar_t__,int ) ;
 int cache_sw_set_leaf (TYPE_5__*) ;
 scalar_t__ cl_ntoh16 (int ) ;
 int cl_qmap_insert (int *,scalar_t__,int *) ;
 int osm_node_get_base_lid (TYPE_7__*,int ) ;
 int osm_ucast_cache_invalidate (TYPE_3__*) ;

__attribute__((used)) static void cache_add_sw_link(osm_ucast_mgr_t * p_mgr, osm_physp_t *p,
         uint16_t remote_lid_ho, boolean_t is_ca)
{
 cache_switch_t *p_cache_sw;
 uint16_t lid_ho = cl_ntoh16(osm_node_get_base_lid(p->p_node, 0));

 OSM_LOG_ENTER(p_mgr->p_log);

 if (!lid_ho || !remote_lid_ho || !p->port_num)
  goto Exit;

 OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
  "Caching switch port: lid %u [port %u] -> lid %u (%s)\n",
  lid_ho, p->port_num, remote_lid_ho, (is_ca) ? "CA/RTR" : "SW");

 p_cache_sw = cache_get_sw(p_mgr, lid_ho);
 if (!p_cache_sw) {
  p_cache_sw = cache_sw_new(lid_ho, p->p_node->sw->num_ports);
  if (!p_cache_sw) {
   OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR,
    "ERR AD01: Out of memory - cache is invalid\n");
   osm_ucast_cache_invalidate(p_mgr);
   goto Exit;
  }
  cl_qmap_insert(&p_mgr->cache_sw_tbl, lid_ho,
          &p_cache_sw->map_item);
 }

 if (p->port_num >= p_cache_sw->num_ports) {
  OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR,
   "ERR AD02: Wrong switch? - cache is invalid\n");
  osm_ucast_cache_invalidate(p_mgr);
  goto Exit;
 }

 if (is_ca)
  cache_sw_set_leaf(p_cache_sw);

 if (p_cache_sw->ports[p->port_num].remote_lid_ho == 0) {

  p_cache_sw->ports[p->port_num].remote_lid_ho = remote_lid_ho;
  p_cache_sw->ports[p->port_num].is_leaf = is_ca;
 }
Exit:
 OSM_LOG_EXIT(p_mgr->p_log);
}
