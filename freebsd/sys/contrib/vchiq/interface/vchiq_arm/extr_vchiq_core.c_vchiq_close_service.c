
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_8__ {size_t srvstate; int localport; TYPE_4__* state; int remove_event; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_9__ {scalar_t__ slot_handler_thread; int id; } ;


 int BUG_ON (int) ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_POLL_TERMINATE ;
 scalar_t__ VCHIQ_RETRY ;
 size_t VCHIQ_SRVSTATE_FREE ;
 size_t VCHIQ_SRVSTATE_HIDDEN ;
 size_t VCHIQ_SRVSTATE_LISTENING ;
 size_t VCHIQ_SRVSTATE_OPEN ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ current ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_1__* find_service_by_handle (int ) ;
 int mark_service_closing (TYPE_1__*) ;
 int request_poll (TYPE_4__*,TYPE_1__*,int ) ;
 int * srvstate_names ;
 int unlock_service (TYPE_1__*) ;
 scalar_t__ vchiq_close_service_internal (TYPE_1__*,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ) ;
 int vchiq_log_warning (int ,char*,int ,int ,int ) ;

VCHIQ_STATUS_T
vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
{

 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

 if (!service)
  return VCHIQ_ERROR;

 vchiq_log_info(vchiq_core_log_level,
  "%d: close_service:%d",
  service->state->id, service->localport);

 if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
  (service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
  (service->srvstate == VCHIQ_SRVSTATE_HIDDEN)) {
  unlock_service(service);
  return VCHIQ_ERROR;
 }

 mark_service_closing(service);

 if (current == service->state->slot_handler_thread) {
  status = vchiq_close_service_internal(service,
   0 );
  BUG_ON(status == VCHIQ_RETRY);
 } else {

  request_poll(service->state, service, VCHIQ_POLL_TERMINATE);
 }

 while (1) {
  if (down_interruptible(&service->remove_event) != 0) {
   status = VCHIQ_RETRY;
   break;
  }

  if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
   (service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
   (service->srvstate == VCHIQ_SRVSTATE_OPEN))
   break;

  vchiq_log_warning(vchiq_core_log_level,
   "%d: close_service:%d - waiting in state %s",
   service->state->id, service->localport,
   srvstate_names[service->srvstate]);
 }

 if ((status == VCHIQ_SUCCESS) &&
  (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
  (service->srvstate != VCHIQ_SRVSTATE_LISTENING))
  status = VCHIQ_ERROR;

 unlock_service(service);

 return status;
}
