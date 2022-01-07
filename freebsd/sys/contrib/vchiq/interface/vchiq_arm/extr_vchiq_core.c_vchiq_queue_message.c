
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_12__ {int srvstate; int remoteport; int localport; int state; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_13__ {scalar_t__ size; int * data; } ;
typedef TYPE_2__ VCHIQ_ELEMENT_T ;


 int VCHIQ_ERROR ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 unsigned int VCHIQ_MAX_MSG_SIZE ;
 int VCHIQ_MSG_DATA ;
 int VCHIQ_SERVICE_STATS_INC (TYPE_1__*,int ) ;


 scalar_t__ VCHIQ_SUCCESS ;
 int error_count ;
 TYPE_1__* find_service_by_handle (int ) ;
 int queue_message (int ,TYPE_1__*,int ,TYPE_2__ const*,unsigned int,unsigned int,int) ;
 int queue_message_sync (int ,TYPE_1__*,int ,TYPE_2__ const*,unsigned int,unsigned int,int) ;
 int unlock_service (TYPE_1__*) ;
 scalar_t__ vchiq_check_service (TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 const VCHIQ_ELEMENT_T *elements, unsigned int count)
{
 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 VCHIQ_STATUS_T status = VCHIQ_ERROR;

 unsigned int size = 0;
 unsigned int i;

 if (!service ||
  (vchiq_check_service(service) != VCHIQ_SUCCESS))
  goto error_exit;

 for (i = 0; i < (unsigned int)count; i++) {
  if (elements[i].size) {
   if (elements[i].data == ((void*)0)) {
    VCHIQ_SERVICE_STATS_INC(service, error_count);
    goto error_exit;
   }
   size += elements[i].size;
  }
 }

 if (size > VCHIQ_MAX_MSG_SIZE) {
  VCHIQ_SERVICE_STATS_INC(service, error_count);
  goto error_exit;
 }

 switch (service->srvstate) {
 case 129:
  status = queue_message(service->state, service,
    VCHIQ_MAKE_MSG(VCHIQ_MSG_DATA,
     service->localport,
     service->remoteport),
    elements, count, size, 1);
  break;
 case 128:
  status = queue_message_sync(service->state, service,
    VCHIQ_MAKE_MSG(VCHIQ_MSG_DATA,
     service->localport,
     service->remoteport),
    elements, count, size, 1);
  break;
 default:
  status = VCHIQ_ERROR;
  break;
 }

error_exit:
 if (service)
  unlock_service(service);

 return status;
}
