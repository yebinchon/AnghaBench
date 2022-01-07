
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_STATE_T ;
struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_INSTANCE_T ;


 int VCHIQ_SUCCESS ;
 TYPE_1__* next_service_by_instance (int *,int ,int*) ;
 int unlock_service (TYPE_1__*) ;
 int vchiq_remove_service (int ) ;

VCHIQ_STATUS_T
vchiq_shutdown_internal(VCHIQ_STATE_T *state, VCHIQ_INSTANCE_T instance)
{
 VCHIQ_SERVICE_T *service;
 int i;


 i = 0;
 while ((service = next_service_by_instance(state, instance,
  &i)) != ((void*)0)) {
  (void)vchiq_remove_service(service->handle);
  unlock_service(service);
 }

 return VCHIQ_SUCCESS;
}
