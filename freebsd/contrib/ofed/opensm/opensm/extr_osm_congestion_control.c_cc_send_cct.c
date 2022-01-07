
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int p_log; TYPE_2__* p_subn; } ;
typedef TYPE_5__ osm_sm_t ;
struct TYPE_14__ {int * cc_tbl; } ;
struct TYPE_15__ {TYPE_3__ ca; } ;
struct TYPE_17__ {TYPE_4__ cc; scalar_t__ need_update; } ;
typedef TYPE_6__ osm_physp_t ;
typedef int osm_node_t ;
typedef int osm_madw_t ;
struct TYPE_18__ {unsigned int cc_tbl_mads; int * cc_tbl; int bind_handle; int mad_pool; } ;
typedef TYPE_7__ osm_congestion_control_t ;
typedef int ib_cc_tbl_t ;
typedef int ib_cc_mad_t ;
typedef int ib_api_status_t ;
struct TYPE_13__ {scalar_t__ need_update; TYPE_1__* p_osm; } ;
struct TYPE_12__ {TYPE_7__ cc; } ;


 int IB_INSUFFICIENT_MEMORY ;
 int IB_MAD_ATTR_CC_TBL ;
 int IB_SUCCESS ;
 int MAD_BLOCK_SIZE ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 int cc_mad_post (TYPE_7__*,int *,int *,TYPE_6__*,int ,int ) ;
 int cl_hton32 (unsigned int) ;
 scalar_t__ ib_cc_mad_get_mgt_data_ptr (int *) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int * osm_mad_pool_get (int ,int ,int ,int *) ;
 int * osm_madw_get_cc_mad_ptr (int *) ;

__attribute__((used)) static ib_api_status_t cc_send_cct(osm_sm_t * p_sm,
       osm_node_t *p_node,
       osm_physp_t *p_physp)
{
 osm_congestion_control_t *p_cc = &p_sm->p_subn->p_osm->cc;
 unsigned force_update;
 osm_madw_t *p_madw = ((void*)0);
 ib_cc_mad_t *p_cc_mad = ((void*)0);
 ib_cc_tbl_t *p_cc_tbl = ((void*)0);
 unsigned int index = 0;

 OSM_LOG_ENTER(p_sm->p_log);

 force_update = p_physp->need_update || p_sm->p_subn->need_update;

 for (index = 0; index < p_cc->cc_tbl_mads; index++) {
  if (!force_update
      && !memcmp(&p_cc->cc_tbl[index],
          &p_physp->cc.ca.cc_tbl[index],
          sizeof(p_cc->cc_tbl[index])))
   continue;

  p_madw = osm_mad_pool_get(p_cc->mad_pool, p_cc->bind_handle,
       MAD_BLOCK_SIZE, ((void*)0));
  if (p_madw == ((void*)0)) {
   OSM_LOG(p_sm->p_log, OSM_LOG_ERROR, "ERR C103: "
    "failed to allocate mad\n");
   return IB_INSUFFICIENT_MEMORY;
  }

  p_cc_mad = osm_madw_get_cc_mad_ptr(p_madw);

  p_cc_tbl = (ib_cc_tbl_t *)ib_cc_mad_get_mgt_data_ptr(p_cc_mad);

  memcpy(p_cc_tbl,
         &p_cc->cc_tbl[index],
         sizeof(p_cc->cc_tbl[index]));

  cc_mad_post(p_cc, p_madw, p_node, p_physp,
       IB_MAD_ATTR_CC_TBL, cl_hton32(index));
 }

 OSM_LOG_EXIT(p_sm->p_log);

 return IB_SUCCESS;
}
