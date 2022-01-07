
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef int VCHIQ_HEADER_T ;
struct TYPE_2__ {int handle; int queue; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;


 int vchiq_release_message (int ,int *) ;
 int * vchiu_queue_pop (int *) ;

int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
{
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 VCHIQ_HEADER_T *header;

 header = vchiu_queue_pop(&service->queue);

 vchiq_release_message(service->handle, header);

 return 0;
}
