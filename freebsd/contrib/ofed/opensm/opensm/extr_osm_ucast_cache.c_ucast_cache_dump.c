
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int p_log; int cache_sw_tbl; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_9__ {unsigned int num_ports; TYPE_1__* ports; scalar_t__ dropped; int map_item; } ;
typedef TYPE_3__ cache_switch_t ;
struct TYPE_7__ {char* remote_lid_ho; scalar_t__ is_leaf; } ;


 int OSM_LOG (int ,int ,char*,...) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 int OSM_LOG_IS_ACTIVE_V2 (int ,int ) ;
 unsigned int cache_sw_get_base_lid_ho (TYPE_3__*) ;
 scalar_t__ cache_sw_is_leaf (TYPE_3__*) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;

__attribute__((used)) static void ucast_cache_dump(osm_ucast_mgr_t * p_mgr)
{
 cache_switch_t *p_sw;
 unsigned i;

 OSM_LOG_ENTER(p_mgr->p_log);

 if (!OSM_LOG_IS_ACTIVE_V2(p_mgr->p_log, OSM_LOG_DEBUG))
  goto Exit;

 OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
  "Dumping missing nodes/links as logged by unicast cache:\n");
 for (p_sw = (cache_switch_t *) cl_qmap_head(&p_mgr->cache_sw_tbl);
      p_sw != (cache_switch_t *) cl_qmap_end(&p_mgr->cache_sw_tbl);
      p_sw = (cache_switch_t *) cl_qmap_next(&p_sw->map_item)) {

  OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
   "\t Switch lid %u %s%s\n",
   cache_sw_get_base_lid_ho(p_sw),
   (cache_sw_is_leaf(p_sw)) ? "[leaf switch] " : "",
   (p_sw->dropped) ? "[whole switch missing]" : "");

  for (i = 1; i < p_sw->num_ports; i++)
   if (p_sw->ports[i].remote_lid_ho > 0)
    OSM_LOG(p_mgr->p_log,
     OSM_LOG_DEBUG,
     "\t     - port %u -> lid %u %s\n",
     i, p_sw->ports[i].remote_lid_ho,
     (p_sw->ports[i].is_leaf) ?
     "[remote node is leaf]" : "");
 }
Exit:
 OSM_LOG_EXIT(p_mgr->p_log);
}
