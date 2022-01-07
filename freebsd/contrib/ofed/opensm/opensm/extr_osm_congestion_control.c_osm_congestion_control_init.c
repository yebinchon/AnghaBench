
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct osm_opensm {int disp; int p_vendor; int mad_pool; int log; int sm; int subn; } ;
typedef int osm_subn_opt_t ;
struct TYPE_6__ {scalar_t__ cc_disp_h; int * log; int cc_poller; int thread_state; int sig_mads_on_wire_continue; int outstanding_mads_done_event; int cc_poller_wakeup; int mad_queue_lock; int mad_queue; int vendor; int trans_id; int * mad_pool; int * sm; int * subn; struct osm_opensm* osm; } ;
typedef TYPE_1__ osm_congestion_control_t ;
typedef scalar_t__ ib_api_status_t ;


 scalar_t__ CL_DISP_INVALID_HANDLE ;
 int CONGESTION_CONTROL_INITIAL_TID_VALUE ;
 int FALSE ;
 scalar_t__ IB_SUCCESS ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 int OSM_MSG_MAD_CC ;
 int OSM_THREAD_STATE_NONE ;
 int cc_poller ;
 int cc_rcv_mad ;
 scalar_t__ cl_disp_register (int *,int ,int ,TYPE_1__*) ;
 int cl_event_construct (int *) ;
 scalar_t__ cl_event_init (int *,int ) ;
 int cl_qlist_init (int *) ;
 scalar_t__ cl_spinlock_init (int *) ;
 scalar_t__ cl_thread_init (int *,int ,TYPE_1__*,char*) ;
 int memset (TYPE_1__*,int ,int) ;

ib_api_status_t osm_congestion_control_init(osm_congestion_control_t * p_cc,
         struct osm_opensm *p_osm,
         const osm_subn_opt_t * p_opt)
{
 ib_api_status_t status = IB_SUCCESS;

 OSM_LOG_ENTER(&p_osm->log);

 memset(p_cc, 0, sizeof(*p_cc));

 p_cc->osm = p_osm;
 p_cc->subn = &p_osm->subn;
 p_cc->sm = &p_osm->sm;
 p_cc->log = &p_osm->log;
 p_cc->mad_pool = &p_osm->mad_pool;
 p_cc->trans_id = CONGESTION_CONTROL_INITIAL_TID_VALUE;
 p_cc->vendor = p_osm->p_vendor;

 p_cc->cc_disp_h = cl_disp_register(&p_osm->disp, OSM_MSG_MAD_CC,
        cc_rcv_mad, p_cc);
 if (p_cc->cc_disp_h == CL_DISP_INVALID_HANDLE)
  goto Exit;

 cl_qlist_init(&p_cc->mad_queue);

 status = cl_spinlock_init(&p_cc->mad_queue_lock);
 if (status != IB_SUCCESS)
  goto Exit;

 cl_event_construct(&p_cc->cc_poller_wakeup);
 status = cl_event_init(&p_cc->cc_poller_wakeup, FALSE);
 if (status != IB_SUCCESS)
  goto Exit;

 cl_event_construct(&p_cc->outstanding_mads_done_event);
 status = cl_event_init(&p_cc->outstanding_mads_done_event, FALSE);
 if (status != IB_SUCCESS)
  goto Exit;

 cl_event_construct(&p_cc->sig_mads_on_wire_continue);
 status = cl_event_init(&p_cc->sig_mads_on_wire_continue, FALSE);
 if (status != IB_SUCCESS)
  goto Exit;

 p_cc->thread_state = OSM_THREAD_STATE_NONE;

 status = cl_thread_init(&p_cc->cc_poller, cc_poller, p_cc,
    "cc poller");
 if (status != IB_SUCCESS)
  goto Exit;

 status = IB_SUCCESS;
Exit:
 OSM_LOG_EXIT(p_cc->log);
 return status;
}
