
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;


 int vchiq_release_internal (int ,TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_release_service_internal(VCHIQ_SERVICE_T *service)
{
 return vchiq_release_internal(service->state, service);
}
