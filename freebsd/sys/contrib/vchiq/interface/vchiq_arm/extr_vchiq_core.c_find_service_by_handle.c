
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ srvstate; scalar_t__ handle; scalar_t__ ref_count; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef scalar_t__ VCHIQ_SERVICE_HANDLE_T ;


 int BUG_ON (int) ;
 scalar_t__ VCHIQ_SRVSTATE_FREE ;
 TYPE_1__* handle_to_service (scalar_t__) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,scalar_t__) ;

VCHIQ_SERVICE_T *
find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle)
{
 VCHIQ_SERVICE_T *service;

 spin_lock(&service_spinlock);
 service = handle_to_service(handle);
 if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
  (service->handle == handle)) {
  BUG_ON(service->ref_count == 0);
  service->ref_count++;
 } else
  service = ((void*)0);
 spin_unlock(&service_spinlock);

 if (!service)
  vchiq_log_info(vchiq_core_log_level,
   "Invalid service handle 0x%x", handle);

 return service;
}
