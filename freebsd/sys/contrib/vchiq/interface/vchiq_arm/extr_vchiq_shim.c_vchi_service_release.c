
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;


 int vchiq_release_service (int ) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
{
 int32_t ret = -1;
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 if (service)
  ret = vchiq_status_to_vchi(
   vchiq_release_service(service->handle));
 return ret;
}
