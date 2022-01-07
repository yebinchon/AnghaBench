
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_6__ {scalar_t__ conn_state; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;


 scalar_t__ VCHIQ_CONNSTATE_PAUSED ;
 int VCHIQ_CONNSTATE_RESUMING ;
 int VCHIQ_ERROR ;
 int VCHIQ_STATS_INC (TYPE_1__*,int ) ;
 int VCHIQ_SUCCESS ;
 int error_count ;
 int request_poll (TYPE_1__*,int *,int ) ;
 int vchiq_set_conn_state (TYPE_1__*,int ) ;

VCHIQ_STATUS_T
vchiq_resume_internal(VCHIQ_STATE_T *state)
{
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

 if (state->conn_state == VCHIQ_CONNSTATE_PAUSED) {
  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_RESUMING);
  request_poll(state, ((void*)0), 0);
 } else {
  status = VCHIQ_ERROR;
  VCHIQ_STATS_INC(state, error_count);
 }

 return status;
}
