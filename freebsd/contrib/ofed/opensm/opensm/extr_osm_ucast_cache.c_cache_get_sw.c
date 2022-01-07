
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int cache_sw_tbl; } ;
typedef TYPE_1__ osm_ucast_mgr_t ;
typedef int cache_switch_t ;


 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_get (int *,int ) ;

__attribute__((used)) static cache_switch_t *cache_get_sw(osm_ucast_mgr_t * p_mgr, uint16_t lid_ho)
{
 cache_switch_t *p_cache_sw = (cache_switch_t *)
     cl_qmap_get(&p_mgr->cache_sw_tbl, lid_ho);
 if (p_cache_sw == (cache_switch_t *)
     cl_qmap_end(&p_mgr->cache_sw_tbl))
  p_cache_sw = ((void*)0);

 return p_cache_sw;
}
