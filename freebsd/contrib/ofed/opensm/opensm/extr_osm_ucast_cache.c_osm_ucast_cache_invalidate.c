
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_log; int cache_sw_tbl; scalar_t__ cache_valid; } ;
typedef TYPE_1__ osm_ucast_mgr_t ;
struct TYPE_6__ {int map_item; } ;
typedef TYPE_2__ cache_switch_t ;


 scalar_t__ FALSE ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 int OSM_LOG_VERBOSE ;
 int cache_sw_destroy (TYPE_2__*) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int cl_qmap_remove_all (int *) ;

void osm_ucast_cache_invalidate(osm_ucast_mgr_t * p_mgr)
{
 cache_switch_t *p_sw;
 cache_switch_t *p_next_sw;

 OSM_LOG_ENTER(p_mgr->p_log);

 if (!p_mgr->cache_valid)
  goto Exit;

 p_mgr->cache_valid = FALSE;

 p_next_sw = (cache_switch_t *) cl_qmap_head(&p_mgr->cache_sw_tbl);
 while (p_next_sw !=
        (cache_switch_t *) cl_qmap_end(&p_mgr->cache_sw_tbl)) {
  p_sw = p_next_sw;
  p_next_sw = (cache_switch_t *) cl_qmap_next(&p_sw->map_item);
  cache_sw_destroy(p_sw);
 }
 cl_qmap_remove_all(&p_mgr->cache_sw_tbl);

 OSM_LOG(p_mgr->p_log, OSM_LOG_VERBOSE, "Unicast Cache invalidated\n");
Exit:
 OSM_LOG_EXIT(p_mgr->p_log);
}
