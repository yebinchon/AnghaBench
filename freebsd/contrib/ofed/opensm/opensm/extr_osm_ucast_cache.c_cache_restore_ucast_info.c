
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cache_valid; } ;
typedef TYPE_1__ osm_ucast_mgr_t ;
struct TYPE_8__ {int need_update; int * hops; scalar_t__ num_hops; int * new_lft; scalar_t__ max_lid_ho; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_9__ {int * hops; scalar_t__ num_hops; int * lft; scalar_t__ max_lid_ho; } ;
typedef TYPE_3__ cache_switch_t ;


 int CL_ASSERT (int ) ;
 int free (int *) ;

__attribute__((used)) static void
cache_restore_ucast_info(osm_ucast_mgr_t * p_mgr,
    cache_switch_t * p_cache_sw, osm_switch_t * p_sw)
{
 if (!p_mgr->cache_valid)
  return;



 CL_ASSERT(p_cache_sw->max_lid_ho && p_cache_sw->lft &&
    p_cache_sw->num_hops && p_cache_sw->hops);

 p_sw->max_lid_ho = p_cache_sw->max_lid_ho;

 if (p_sw->new_lft)
  free(p_sw->new_lft);
 p_sw->new_lft = p_cache_sw->lft;
 p_cache_sw->lft = ((void*)0);

 p_sw->num_hops = p_cache_sw->num_hops;
 p_cache_sw->num_hops = 0;
 if (p_sw->hops)
  free(p_sw->hops);
 p_sw->hops = p_cache_sw->hops;
 p_cache_sw->hops = ((void*)0);

 p_sw->need_update = 2;
}
