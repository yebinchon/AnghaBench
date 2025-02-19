
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int p_log; int cache_valid; TYPE_2__* p_subn; } ;
typedef TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_11__ {int max_lid_ho; int lft_size; scalar_t__ lft; int new_lft; } ;
typedef TYPE_4__ osm_switch_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;
struct TYPE_8__ {int use_ucast_cache; } ;
struct TYPE_9__ {TYPE_1__ opt; int sw_guid_tbl; } ;


 int CL_ASSERT (int ) ;
 int IB_INSUFFICIENT_MEMORY ;
 int IB_SMP_DATA_SIZE ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_INFO ;
 int OSM_NO_PATH ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;
 int osm_ucast_mgr_set_fwd_tables (TYPE_3__*) ;
 int ucast_cache_validate (TYPE_3__*) ;

int osm_ucast_cache_process(osm_ucast_mgr_t * p_mgr)
{
 cl_qmap_t *tbl = &p_mgr->p_subn->sw_guid_tbl;
 cl_map_item_t *item;
 osm_switch_t *p_sw;
 uint16_t lft_size;

 if (!p_mgr->p_subn->opt.use_ucast_cache)
  return 1;

 ucast_cache_validate(p_mgr);
 if (!p_mgr->cache_valid)
  return 1;

 OSM_LOG(p_mgr->p_log, OSM_LOG_INFO,
  "Configuring switch tables using cached routing\n");

 for (item = cl_qmap_head(tbl); item != cl_qmap_end(tbl);
      item = cl_qmap_next(item)) {
  p_sw = (osm_switch_t *) item;
  CL_ASSERT(p_sw->new_lft);
  if (!p_sw->lft) {
   lft_size = (p_sw->max_lid_ho / IB_SMP_DATA_SIZE + 1)
       * IB_SMP_DATA_SIZE;
   p_sw->lft = malloc(lft_size);
   if (!p_sw->lft)
    return IB_INSUFFICIENT_MEMORY;
   p_sw->lft_size = lft_size;
   memset(p_sw->lft, OSM_NO_PATH, p_sw->lft_size);
  }

 }

 osm_ucast_mgr_set_fwd_tables(p_mgr);

 return 0;
}
