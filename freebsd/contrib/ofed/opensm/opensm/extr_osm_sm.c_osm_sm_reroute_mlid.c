
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* mlids_req; size_t mlids_req_max; int p_log; } ;
typedef TYPE_1__ osm_sm_t ;
typedef size_t ib_net16_t ;


 size_t IB_LID_MCAST_START_HO ;
 int OSM_LOG (int ,int ,char*,size_t) ;
 int OSM_LOG_DEBUG ;
 int OSM_SIGNAL_IDLE_TIME_PROCESS_REQUEST ;
 size_t cl_ntoh16 (size_t) ;
 int osm_sm_signal (TYPE_1__*,int ) ;

void osm_sm_reroute_mlid(osm_sm_t * sm, ib_net16_t mlid)
{
 mlid = cl_ntoh16(mlid) - IB_LID_MCAST_START_HO;
 sm->mlids_req[mlid] = 1;
 if (sm->mlids_req_max < mlid)
  sm->mlids_req_max = mlid;
 osm_sm_signal(sm, OSM_SIGNAL_IDLE_TIME_PROCESS_REQUEST);
 OSM_LOG(sm->p_log, OSM_LOG_DEBUG, "rerouting requested for MLID 0x%x\n",
  mlid + IB_LID_MCAST_START_HO);
}
