
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_7__ {int auto_close; size_t localport; int sync; int trace; int srvstate; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
struct TYPE_8__ {int slot_use_count; int slot_quota; int message_quota; int message_use_count; int quota_event; } ;
typedef TYPE_3__ VCHIQ_SERVICE_QUOTA_T ;
typedef int VCHIQ_SERVICE_OPTION_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_6__ {int default_slot_quota; int default_message_quota; TYPE_3__* service_quotas; } ;


 int VCHIQ_ERROR ;





 int VCHIQ_SRVSTATE_HIDDEN ;
 int VCHIQ_SRVSTATE_LISTENING ;
 int VCHIQ_SUCCESS ;
 TYPE_2__* find_service_by_handle (int ) ;
 int unlock_service (TYPE_2__*) ;
 int up (int *) ;

VCHIQ_STATUS_T
vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
 VCHIQ_SERVICE_OPTION_T option, int value)
{
 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 VCHIQ_STATUS_T status = VCHIQ_ERROR;

 if (service) {
  switch (option) {
  case 132:
   service->auto_close = value;
   status = VCHIQ_SUCCESS;
   break;

  case 130: {
   VCHIQ_SERVICE_QUOTA_T *service_quota =
    &service->state->service_quotas[
     service->localport];
   if (value == 0)
    value = service->state->default_slot_quota;
   if ((value >= service_quota->slot_use_count) &&
     (value < (unsigned short)~0)) {
    service_quota->slot_quota = value;
    if ((value >= service_quota->slot_use_count) &&
     (service_quota->message_quota >=
      service_quota->message_use_count)) {


     up(&service_quota->quota_event);
    }
    status = VCHIQ_SUCCESS;
   }
  } break;

  case 131: {
   VCHIQ_SERVICE_QUOTA_T *service_quota =
    &service->state->service_quotas[
     service->localport];
   if (value == 0)
    value = service->state->default_message_quota;
   if ((value >= service_quota->message_use_count) &&
     (value < (unsigned short)~0)) {
    service_quota->message_quota = value;
    if ((value >=
     service_quota->message_use_count) &&
     (service_quota->slot_quota >=
     service_quota->slot_use_count))


     up(&service_quota->quota_event);
    status = VCHIQ_SUCCESS;
   }
  } break;

  case 129:
   if ((service->srvstate == VCHIQ_SRVSTATE_HIDDEN) ||
    (service->srvstate ==
    VCHIQ_SRVSTATE_LISTENING)) {
    service->sync = value;
    status = VCHIQ_SUCCESS;
   }
   break;

  case 128:
   service->trace = value;
   status = VCHIQ_SUCCESS;
   break;

  default:
   break;
  }
  unlock_service(service);
 }

 return status;
}
