
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t conn_state; int id; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
typedef size_t VCHIQ_CONNSTATE_T ;


 int * conn_state_names ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ) ;
 int vchiq_platform_conn_state_changed (TYPE_1__*,size_t,size_t) ;

inline void
vchiq_set_conn_state(VCHIQ_STATE_T *state, VCHIQ_CONNSTATE_T newstate)
{
 VCHIQ_CONNSTATE_T oldstate = state->conn_state;
 vchiq_log_info(vchiq_core_log_level, "%d: %s->%s", state->id,
  conn_state_names[oldstate],
  conn_state_names[newstate]);
 state->conn_state = newstate;
 vchiq_platform_conn_state_changed(state, oldstate, newstate);
}
