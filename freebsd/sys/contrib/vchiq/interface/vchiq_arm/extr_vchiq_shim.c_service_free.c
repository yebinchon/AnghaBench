
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;


 int kfree (TYPE_1__*) ;
 int vchiu_queue_delete (int *) ;

__attribute__((used)) static void service_free(SHIM_SERVICE_T *service)
{
 if (service) {
  vchiu_queue_delete(&service->queue);
  kfree(service);
 }
}
