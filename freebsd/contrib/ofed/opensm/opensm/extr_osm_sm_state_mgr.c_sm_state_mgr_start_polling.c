
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int p_log; int polling_timer; int p_lock; TYPE_2__* p_subn; scalar_t__ retry_number; } ;
typedef TYPE_3__ osm_sm_t ;
typedef scalar_t__ cl_status_t ;
struct TYPE_6__ {int sminfo_polling_timeout; } ;
struct TYPE_7__ {int sm_state; TYPE_1__ opt; } ;


 int CL_PLOCK_ACQUIRE (int ) ;
 int CL_PLOCK_RELEASE (int ) ;
 scalar_t__ CL_SUCCESS ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 scalar_t__ cl_timer_start (int *,int ) ;
 int sm_state_mgr_send_master_sm_info_req (TYPE_3__*,int ) ;

__attribute__((used)) static void sm_state_mgr_start_polling(osm_sm_t * sm)
{
 uint32_t timeout;
 cl_status_t cl_status;

 OSM_LOG_ENTER(sm->p_log);




 sm->retry_number = 0;




 CL_PLOCK_ACQUIRE(sm->p_lock);
 timeout = sm->p_subn->opt.sminfo_polling_timeout;
 sm_state_mgr_send_master_sm_info_req(sm, sm->p_subn->sm_state);
 CL_PLOCK_RELEASE(sm->p_lock);






 cl_status = cl_timer_start(&sm->polling_timer, timeout);
 if (cl_status != CL_SUCCESS)
  OSM_LOG(sm->p_log, OSM_LOG_ERROR, "ERR 3210: "
   "Failed to start polling timer\n");

 OSM_LOG_EXIT(sm->p_log);
}
