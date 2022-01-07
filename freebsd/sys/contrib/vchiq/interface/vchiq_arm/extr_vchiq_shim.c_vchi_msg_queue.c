
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {void const* member_0; int member_1; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_5__ {int handle; } ;
typedef TYPE_2__ SHIM_SERVICE_T ;


 scalar_t__ VCHIQ_RETRY ;
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 int WARN_ON (int) ;
 int msleep (int) ;
 scalar_t__ vchiq_queue_message (int ,TYPE_1__*,int) ;
 int vchiq_status_to_vchi (scalar_t__) ;

int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
 const void *data,
 uint32_t data_size,
 VCHI_FLAGS_T flags,
 void *msg_handle)
{
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 VCHIQ_ELEMENT_T element = {data, data_size};
 VCHIQ_STATUS_T status;

 (void)msg_handle;

 WARN_ON(flags != VCHI_FLAGS_BLOCK_UNTIL_QUEUED);

 status = vchiq_queue_message(service->handle, &element, 1);





 while (status == VCHIQ_RETRY) {
  msleep(1);
  status = vchiq_queue_message(service->handle, &element, 1);
 }

 return vchiq_status_to_vchi(status);
}
