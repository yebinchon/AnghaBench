
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
struct TYPE_5__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;
struct TYPE_6__ {int handle; int queue; } ;
typedef TYPE_2__ SHIM_SERVICE_T ;


 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 scalar_t__ VCHI_FLAGS_NONE ;
 int WARN_ON (int) ;
 int memcpy (void*,int ,scalar_t__) ;
 int vchiq_release_message (int ,TYPE_1__*) ;
 scalar_t__ vchiu_queue_is_empty (int *) ;
 TYPE_1__* vchiu_queue_pop (int *) ;

int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 void *data,
 uint32_t max_data_size_to_read,
 uint32_t *actual_msg_size,
 VCHI_FLAGS_T flags)
{
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 VCHIQ_HEADER_T *header;

 WARN_ON((flags != VCHI_FLAGS_NONE) &&
  (flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));

 if (flags == VCHI_FLAGS_NONE)
  if (vchiu_queue_is_empty(&service->queue))
   return -1;

 header = vchiu_queue_pop(&service->queue);

 memcpy(data, header->data, header->size < max_data_size_to_read ?
  header->size : max_data_size_to_read);

 *actual_msg_size = header->size;

 vchiq_release_message(service->handle, header);

 return 0;
}
