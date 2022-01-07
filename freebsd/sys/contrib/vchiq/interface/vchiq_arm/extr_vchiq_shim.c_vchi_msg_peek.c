
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
struct TYPE_4__ {int size; void* data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_2__ SHIM_SERVICE_T ;


 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 scalar_t__ VCHI_FLAGS_NONE ;
 int WARN_ON (int) ;
 scalar_t__ vchiu_queue_is_empty (int *) ;
 TYPE_1__* vchiu_queue_peek (int *) ;

int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
 void **data,
 uint32_t *msg_size,
 VCHI_FLAGS_T flags)
{
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
 VCHIQ_HEADER_T *header;

 WARN_ON((flags != VCHI_FLAGS_NONE) &&
  (flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));

 if (flags == VCHI_FLAGS_NONE)
  if (vchiu_queue_is_empty(&service->queue))
   return -1;

 header = vchiu_queue_peek(&service->queue);

 *data = header->data;
 *msg_size = header->size;

 return 0;
}
