
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_10__ {scalar_t__ conn_state; int connect; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_11__ {scalar_t__ srvstate; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_INSTANCE_T ;


 int QMFLAGS_IS_BLOCKING ;
 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ;
 scalar_t__ VCHIQ_CONNSTATE_CONNECTING ;
 scalar_t__ VCHIQ_CONNSTATE_DISCONNECTED ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 int VCHIQ_MSG_CONNECT ;
 scalar_t__ VCHIQ_RETRY ;
 scalar_t__ VCHIQ_SRVSTATE_HIDDEN ;
 int VCHIQ_SRVSTATE_LISTENING ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_2__* next_service_by_instance (TYPE_1__*,int ,int*) ;
 scalar_t__ queue_message (TYPE_1__*,int *,int ,int *,int ,int ,int ) ;
 int unlock_service (TYPE_2__*) ;
 int up (int *) ;
 int vchiq_set_conn_state (TYPE_1__*,scalar_t__) ;
 int vchiq_set_service_state (TYPE_2__*,int ) ;

VCHIQ_STATUS_T
vchiq_connect_internal(VCHIQ_STATE_T *state, VCHIQ_INSTANCE_T instance)
{
 VCHIQ_SERVICE_T *service;
 int i;


 i = 0;
 while ((service = next_service_by_instance(state, instance,
  &i)) != ((void*)0)) {
  if (service->srvstate == VCHIQ_SRVSTATE_HIDDEN)
   vchiq_set_service_state(service,
    VCHIQ_SRVSTATE_LISTENING);
  unlock_service(service);
 }

 if (state->conn_state == VCHIQ_CONNSTATE_DISCONNECTED) {
  if (queue_message(state, ((void*)0),
   VCHIQ_MAKE_MSG(VCHIQ_MSG_CONNECT, 0, 0), ((void*)0), 0,
   0, QMFLAGS_IS_BLOCKING) == VCHIQ_RETRY)
   return VCHIQ_RETRY;

  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTING);
 }

 if (state->conn_state == VCHIQ_CONNSTATE_CONNECTING) {
  if (down_interruptible(&state->connect) != 0)
   return VCHIQ_RETRY;

  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTED);
  up(&state->connect);
 }

 return VCHIQ_SUCCESS;
}
