
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {short peer_version; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_SUCCESS ;
 TYPE_1__* find_service_by_handle (int ) ;
 int unlock_service (TYPE_1__*) ;
 scalar_t__ vchiq_check_service (TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle, short *peer_version)
{
   VCHIQ_STATUS_T status = VCHIQ_ERROR;
   VCHIQ_SERVICE_T *service = find_service_by_handle(handle);

   if (!service ||
      (vchiq_check_service(service) != VCHIQ_SUCCESS) ||
      !peer_version)
      goto exit;
   *peer_version = service->peer_version;
   status = VCHIQ_SUCCESS;

exit:
   if (service)
      unlock_service(service);
   return status;
}
