
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
typedef int VCHI_SERVICE_OPTION_T ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_OPTION_T ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;


 int VCHIQ_SERVICE_OPTION_SYNCHRONOUS ;
 int VCHIQ_SERVICE_OPTION_TRACE ;


 int vchiq_set_service_option (int ,int ,int) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
    VCHI_SERVICE_OPTION_T option,
    int value)
{
 int32_t ret = -1;
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 VCHIQ_SERVICE_OPTION_T vchiq_option;
 switch (option) {
 case 128:
  vchiq_option = VCHIQ_SERVICE_OPTION_TRACE;
  break;
 case 129:
  vchiq_option = VCHIQ_SERVICE_OPTION_SYNCHRONOUS;
  break;
 default:
  service = ((void*)0);
  break;
 }
 if (service) {
  VCHIQ_STATUS_T status =
   vchiq_set_service_option(service->handle,
      vchiq_option,
      value);

  ret = vchiq_status_to_vchi(status);
 }
 return ret;
}
