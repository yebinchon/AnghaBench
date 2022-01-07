
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int map_item; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_8__ {int p_log; TYPE_1__* p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
typedef int osm_mcast_tbl_t ;
typedef int cl_qmap_t ;
struct TYPE_6__ {int sw_guid_tbl; } ;


 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int osm_mcast_tbl_clear_mlid (int *,int ) ;
 int * osm_switch_get_mcast_tbl_ptr (TYPE_2__*) ;

__attribute__((used)) static void mcast_mgr_clear(osm_sm_t * sm, uint16_t mlid)
{
 osm_switch_t *p_sw;
 cl_qmap_t *p_sw_tbl;
 osm_mcast_tbl_t *p_mcast_tbl;

 OSM_LOG_ENTER(sm->p_log);


 p_sw_tbl = &sm->p_subn->sw_guid_tbl;
 p_sw = (osm_switch_t *) cl_qmap_head(p_sw_tbl);
 while (p_sw != (osm_switch_t *) cl_qmap_end(p_sw_tbl)) {
  p_mcast_tbl = osm_switch_get_mcast_tbl_ptr(p_sw);
  osm_mcast_tbl_clear_mlid(p_mcast_tbl, mlid);
  p_sw = (osm_switch_t *) cl_qmap_next(&p_sw->map_item);
 }

 OSM_LOG_EXIT(sm->p_log);
}
