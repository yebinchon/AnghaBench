
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int client_id; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 TYPE_1__* find_service_by_handle (int ) ;
 int unlock_service (TYPE_1__*) ;

int
vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
{
 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 int id;

 id = service ? service->client_id : 0;
 if (service)
  unlock_service(service);

 return id;
}
