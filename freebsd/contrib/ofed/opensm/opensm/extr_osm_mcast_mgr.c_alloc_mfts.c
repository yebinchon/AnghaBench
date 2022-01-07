
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mcast_tbl; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_7__ {TYPE_1__* p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
typedef int cl_map_item_t ;
struct TYPE_5__ {int max_mcast_lid_ho; int sw_guid_tbl; scalar_t__* mboxes; } ;


 int IB_LID_MCAST_START_HO ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 scalar_t__ osm_mcast_tbl_realloc (int *,int) ;

__attribute__((used)) static int alloc_mfts(osm_sm_t * sm)
{
 int i;
 cl_map_item_t *item;
 osm_switch_t *p_sw;

 for (i = sm->p_subn->max_mcast_lid_ho - IB_LID_MCAST_START_HO; i >= 0;
      i--)
  if (sm->p_subn->mboxes[i])
   break;
 if (i < 0)
  return 0;


 for (item = cl_qmap_head(&sm->p_subn->sw_guid_tbl);
      item != cl_qmap_end(&sm->p_subn->sw_guid_tbl);
      item = cl_qmap_next(item)) {
  p_sw = (osm_switch_t *) item;
  if (osm_mcast_tbl_realloc(&p_sw->mcast_tbl, i))
   return -1;
 }
 return 0;
}
