
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cache_sw_tbl; int cache_valid; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_8__ {unsigned int num_ports; int map_item; TYPE_1__* ports; } ;
typedef TYPE_3__ cache_switch_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ remote_lid_ho; } ;


 int FALSE ;
 int TRUE ;
 int cache_sw_destroy (TYPE_3__*) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int cl_qmap_remove_item (int *,int *) ;

__attribute__((used)) static void cache_cleanup_switches(osm_ucast_mgr_t * p_mgr)
{
 cache_switch_t *p_sw;
 cache_switch_t *p_next_sw;
 unsigned port_num;
 boolean_t found_port;

 if (!p_mgr->cache_valid)
  return;

 p_next_sw = (cache_switch_t *) cl_qmap_head(&p_mgr->cache_sw_tbl);
 while (p_next_sw !=
        (cache_switch_t *) cl_qmap_end(&p_mgr->cache_sw_tbl)) {
  p_sw = p_next_sw;
  p_next_sw = (cache_switch_t *) cl_qmap_next(&p_sw->map_item);

  found_port = FALSE;
  for (port_num = 1; port_num < p_sw->num_ports; port_num++)
   if (p_sw->ports[port_num].remote_lid_ho)
    found_port = TRUE;

  if (!found_port) {
   cl_qmap_remove_item(&p_mgr->cache_sw_tbl,
         &p_sw->map_item);
   cache_sw_destroy(p_sw);
  }
 }
}
