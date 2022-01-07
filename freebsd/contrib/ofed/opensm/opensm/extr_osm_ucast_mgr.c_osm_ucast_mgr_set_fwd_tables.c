
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* p_subn; scalar_t__ max_lid; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_6__ {int sw_guid_tbl; } ;


 int cl_qmap_apply_func (int *,int ,TYPE_2__*) ;
 int ucast_mgr_pipeline_fwd_tbl (TYPE_2__*) ;
 int ucast_mgr_set_fwd_top ;

void osm_ucast_mgr_set_fwd_tables(osm_ucast_mgr_t * p_mgr)
{
 p_mgr->max_lid = 0;

 cl_qmap_apply_func(&p_mgr->p_subn->sw_guid_tbl, ucast_mgr_set_fwd_top,
      p_mgr);

 ucast_mgr_pipeline_fwd_tbl(p_mgr);
}
