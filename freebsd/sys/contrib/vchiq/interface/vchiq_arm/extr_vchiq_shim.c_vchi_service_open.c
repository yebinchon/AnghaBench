
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int params ;
typedef int int32_t ;
typedef int * VCHI_SERVICE_HANDLE_T ;
typedef int VCHI_INSTANCE_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_12__ {int version_min; int version; TYPE_3__* userdata; int callback; int fourcc; } ;
typedef TYPE_2__ VCHIQ_SERVICE_PARAMS_T ;
typedef int VCHIQ_INSTANCE_T ;
struct TYPE_11__ {int version_min; int version; } ;
struct TYPE_14__ {TYPE_1__ version; int service_id; } ;
struct TYPE_13__ {int handle; } ;
typedef TYPE_3__ SHIM_SERVICE_T ;
typedef TYPE_4__ SERVICE_CREATION_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__* service_alloc (int ,TYPE_4__*) ;
 int service_free (TYPE_3__*) ;
 int shim_callback ;
 scalar_t__ vchiq_open_service (int ,TYPE_2__*,int *) ;

int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 SERVICE_CREATION_T *setup,
 VCHI_SERVICE_HANDLE_T *handle)
{
 VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 SHIM_SERVICE_T *service = service_alloc(instance, setup);

 *handle = (VCHI_SERVICE_HANDLE_T)service;

 if (service) {
  VCHIQ_SERVICE_PARAMS_T params;
  VCHIQ_STATUS_T status;

  memset(&params, 0, sizeof(params));
  params.fourcc = setup->service_id;
  params.callback = shim_callback;
  params.userdata = service;
  params.version = setup->version.version;
  params.version_min = setup->version.version_min;

  status = vchiq_open_service(instance, &params,
   &service->handle);
  if (status != VCHIQ_SUCCESS) {
   service_free(service);
   service = ((void*)0);
   *handle = ((void*)0);
  }
 }

 return (service != ((void*)0)) ? 0 : -1;
}
