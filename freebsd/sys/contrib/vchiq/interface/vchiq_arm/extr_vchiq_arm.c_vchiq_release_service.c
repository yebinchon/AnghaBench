
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int VCHIQ_ERROR ;
 TYPE_1__* find_service_by_handle (int ) ;
 int unlock_service (TYPE_1__*) ;
 int vchiq_release_internal (int ,TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle)
{
 VCHIQ_STATUS_T ret = VCHIQ_ERROR;
 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 if (service) {
  ret = vchiq_release_internal(service->state, service);
  unlock_service(service);
 }
 return ret;
}
