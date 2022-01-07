
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VCHIQ_INSTANCE_T ;
struct TYPE_8__ {int callback_param; int callback; } ;
struct TYPE_7__ {int callback_param; int callback; int queue; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;
typedef TYPE_2__ SERVICE_CREATION_T ;


 int GFP_KERNEL ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 scalar_t__ vchiu_queue_init (int *,int) ;

__attribute__((used)) static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
 SERVICE_CREATION_T *setup)
{
 SHIM_SERVICE_T *service = kzalloc(sizeof(SHIM_SERVICE_T), GFP_KERNEL);

 (void)instance;

 if (service) {
  if (vchiu_queue_init(&service->queue, 64)) {
   service->callback = setup->callback;
   service->callback_param = setup->callback_param;
  } else {
   kfree(service);
   service = ((void*)0);
  }
 }

 return service;
}
