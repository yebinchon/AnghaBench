
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int threadname ;
struct TYPE_6__ {int id; scalar_t__ conn_state; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
typedef int VCHIQ_CONNSTATE_T ;
struct TYPE_7__ {int first_connect; int susp_res_lock; int * ka_thread; } ;
typedef TYPE_2__ VCHIQ_ARM_STATE_T ;


 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ;
 int get_conn_state_name (int ) ;
 int snprintf (char*,int,char*,int) ;
 int vchiq_keepalive_thread_func ;
 int vchiq_log_error (int ,char*,char*) ;
 int vchiq_log_info (int ,char*,int,int ,int ) ;
 TYPE_2__* vchiq_platform_get_arm_state (TYPE_1__*) ;
 int vchiq_susp_log_level ;
 int * vchiq_thread_create (int *,void*,char*) ;
 int wake_up_process (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void vchiq_platform_conn_state_changed(VCHIQ_STATE_T *state,
 VCHIQ_CONNSTATE_T oldstate, VCHIQ_CONNSTATE_T newstate)
{
 VCHIQ_ARM_STATE_T *arm_state = vchiq_platform_get_arm_state(state);
 vchiq_log_info(vchiq_susp_log_level, "%d: %s->%s", state->id,
  get_conn_state_name(oldstate), get_conn_state_name(newstate));
 if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
  write_lock_bh(&arm_state->susp_res_lock);
  if (!arm_state->first_connect) {
   char threadname[10];
   arm_state->first_connect = 1;
   write_unlock_bh(&arm_state->susp_res_lock);
   snprintf(threadname, sizeof(threadname), "VCHIQka-%d",
    state->id);
   arm_state->ka_thread = vchiq_thread_create(
    &vchiq_keepalive_thread_func,
    (void *)state,
    threadname);
   if (arm_state->ka_thread == ((void*)0)) {
    vchiq_log_error(vchiq_susp_log_level,
     "vchiq: FATAL: couldn't create thread %s",
     threadname);
   } else {
    wake_up_process(arm_state->ka_thread);
   }
  } else
   write_unlock_bh(&arm_state->susp_res_lock);
 }
}
