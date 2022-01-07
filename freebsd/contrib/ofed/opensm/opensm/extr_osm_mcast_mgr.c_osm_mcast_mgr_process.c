
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int mlids_req_max; int p_log; int p_lock; TYPE_1__* p_subn; scalar_t__* mlids_req; } ;
typedef TYPE_2__ osm_sm_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {unsigned int max_mcast_lid_ho; int p_osm; scalar_t__* mboxes; int sw_guid_tbl; } ;


 int CL_PLOCK_EXCL_ACQUIRE (int ) ;
 int CL_PLOCK_RELEASE (int ) ;
 unsigned int IB_LID_MCAST_START_HO ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 scalar_t__ alloc_mfts (TYPE_2__*) ;
 scalar_t__ cl_qmap_count (int *) ;
 int mcast_mgr_process_mlid (TYPE_2__*,unsigned int) ;
 int mcast_mgr_set_mftables (TYPE_2__*) ;
 int osm_dump_mcast_routes (int ) ;

int osm_mcast_mgr_process(osm_sm_t * sm, boolean_t config_all)
{
 int ret = 0;
 unsigned i;
 unsigned max_mlid;

 OSM_LOG_ENTER(sm->p_log);

 CL_PLOCK_EXCL_ACQUIRE(sm->p_lock);


 if (cl_qmap_count(&sm->p_subn->sw_guid_tbl) == 0) {
  OSM_LOG(sm->p_log, OSM_LOG_DEBUG,
   "No switches in subnet. Nothing to do\n");
  goto exit;
 }

 if (alloc_mfts(sm)) {
  OSM_LOG(sm->p_log, OSM_LOG_ERROR,
   "ERR 0A09: alloc_mfts failed\n");
  ret = -1;
  goto exit;
 }

 max_mlid = config_all ? sm->p_subn->max_mcast_lid_ho
   - IB_LID_MCAST_START_HO : sm->mlids_req_max;
 for (i = 0; i <= max_mlid; i++) {
  if (sm->mlids_req[i] ||
      (config_all && sm->p_subn->mboxes[i])) {
   sm->mlids_req[i] = 0;
   mcast_mgr_process_mlid(sm, i + IB_LID_MCAST_START_HO);
  }
 }

 sm->mlids_req_max = 0;

 ret = mcast_mgr_set_mftables(sm);

 osm_dump_mcast_routes(sm->p_subn->p_osm);

exit:
 CL_PLOCK_RELEASE(sm->p_lock);
 OSM_LOG_EXIT(sm->p_log);
 return ret;
}
