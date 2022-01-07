
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_6__ {int conn_state; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;



 int VCHIQ_CONNSTATE_PAUSING ;
 int VCHIQ_ERROR ;
 int VCHIQ_STATS_INC (TYPE_1__*,int ) ;
 int VCHIQ_SUCCESS ;
 int * conn_state_names ;
 int error_count ;
 int request_poll (TYPE_1__*,int *,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,int ) ;
 int vchiq_set_conn_state (TYPE_1__*,int ) ;

VCHIQ_STATUS_T
vchiq_pause_internal(VCHIQ_STATE_T *state)
{
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

 switch (state->conn_state) {
 case 128:

  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_PAUSING);
  request_poll(state, ((void*)0), 0);
  break;
 default:
  vchiq_log_error(vchiq_core_log_level,
   "vchiq_pause_internal in state %s\n",
   conn_state_names[state->conn_state]);
  status = VCHIQ_ERROR;
  VCHIQ_STATS_INC(state, error_count);
  break;
 }

 return status;
}
