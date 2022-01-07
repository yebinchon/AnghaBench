
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;


 int USE_TYPE_SERVICE ;
 int vchiq_use_internal (int ,TYPE_1__*,int ) ;

VCHIQ_STATUS_T
vchiq_use_service_internal(VCHIQ_SERVICE_T *service)
{
 return vchiq_use_internal(service->state, service, USE_TYPE_SERVICE);
}
