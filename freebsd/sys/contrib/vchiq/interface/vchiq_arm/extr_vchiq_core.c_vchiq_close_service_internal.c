
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_11__ {int is_master; int sync_mutex; int slot_mutex; int id; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_12__ {scalar_t__ public_fourcc; size_t srvstate; int sync; int remoteport; int localport; int remove_event; int client_id; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;


 int QMFLAGS_NO_MUTEX_UNLOCK ;
 int VCHIQ_ERROR ;
 scalar_t__ VCHIQ_FOURCC_INVALID ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 int VCHIQ_MSG_CLOSE ;
 int VCHIQ_MSG_DSTPORT (int ) ;
 int VCHIQ_PORT_FREE ;
 int VCHIQ_RETRY ;
 int VCHIQ_SUCCESS ;
 int close_service_complete (TYPE_2__*,int const) ;
 int do_abort_bulks (TYPE_2__*) ;
 int lmutex_lock (int *) ;
 int lmutex_unlock (int *) ;
 int queue_message (TYPE_1__*,TYPE_2__*,int ,int *,int ,int ,int ) ;
 int release_service_messages (TYPE_2__*) ;
 int * srvstate_names ;
 int up (int *) ;
 int vchiq_core_log_level ;
 int vchiq_free_service_internal (TYPE_2__*) ;
 int vchiq_log_error (int ,char*,int,...) ;
 int vchiq_log_info (int ,char*,int ,int ,int,int ) ;
 int vchiq_set_service_state (TYPE_2__*,int const) ;

VCHIQ_STATUS_T
vchiq_close_service_internal(VCHIQ_SERVICE_T *service, int close_recvd)
{
 VCHIQ_STATE_T *state = service->state;
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
 int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);

 vchiq_log_info(vchiq_core_log_level, "%d: csi:%d,%d (%s)",
  service->state->id, service->localport, close_recvd,
  srvstate_names[service->srvstate]);

 switch (service->srvstate) {
 case 136:
 case 132:
 case 131:
 case 133:
  if (close_recvd)
   vchiq_log_error(vchiq_core_log_level,
    "vchiq_close_service_internal(1) called "
    "in state %s",
    srvstate_names[service->srvstate]);
  else if (is_server) {
   if (service->srvstate == 131) {
    status = VCHIQ_ERROR;
   } else {
    service->client_id = 0;
    service->remoteport = VCHIQ_PORT_FREE;
    if (service->srvstate ==
     133)
     vchiq_set_service_state(service,
      131);
   }
   up(&service->remove_event);
  } else
   vchiq_free_service_internal(service);
  break;
 case 129:
  if (close_recvd) {

   vchiq_set_service_state(service,
    133);
   up(&service->remove_event);
  } else {

   status = queue_message(state, service,
    VCHIQ_MAKE_MSG
    (VCHIQ_MSG_CLOSE,
    service->localport,
    VCHIQ_MSG_DSTPORT(service->remoteport)),
    ((void*)0), 0, 0, 0);
  }
  break;

 case 128:
  lmutex_lock(&state->sync_mutex);


 case 130:
  if (state->is_master || close_recvd) {
   if (!do_abort_bulks(service))
    status = VCHIQ_RETRY;
  }

  release_service_messages(service);

  if (status == VCHIQ_SUCCESS)
   status = queue_message(state, service,
    VCHIQ_MAKE_MSG
    (VCHIQ_MSG_CLOSE,
    service->localport,
    VCHIQ_MSG_DSTPORT(service->remoteport)),
    ((void*)0), 0, 0, QMFLAGS_NO_MUTEX_UNLOCK);

  if (status == VCHIQ_SUCCESS) {
   if (!close_recvd) {


    vchiq_set_service_state(service,
       134);
    lmutex_unlock(&state->slot_mutex);
    if (service->sync)
     lmutex_unlock(&state->sync_mutex);
    break;
   }
  } else if (service->srvstate == 128) {
   lmutex_unlock(&state->sync_mutex);
   break;
  } else
   break;


  vchiq_set_service_state(service, 135);
  lmutex_unlock(&state->slot_mutex);
  if (service->sync)
   lmutex_unlock(&state->sync_mutex);

  status = close_service_complete(service,
    135);
  break;

 case 134:
  if (!close_recvd)

   break;

  if (!state->is_master) {
   if (!do_abort_bulks(service)) {
    status = VCHIQ_RETRY;
    break;
   }
  }

  if (status == VCHIQ_SUCCESS)
   status = close_service_complete(service,
    135);
  break;

 case 135:
  if (!close_recvd && is_server)

   vchiq_set_service_state(service,
    131);
  status = close_service_complete(service,
   135);
  break;

 default:
  vchiq_log_error(vchiq_core_log_level,
   "vchiq_close_service_internal(%d) called in state %s",
   close_recvd, srvstate_names[service->srvstate]);
  break;
 }

 return status;
}
