
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_SERVICE_T ;


 int mark_service_closing_internal (int *,int ) ;

__attribute__((used)) static void
mark_service_closing(VCHIQ_SERVICE_T *service)
{
 mark_service_closing_internal(service, 0);
}
