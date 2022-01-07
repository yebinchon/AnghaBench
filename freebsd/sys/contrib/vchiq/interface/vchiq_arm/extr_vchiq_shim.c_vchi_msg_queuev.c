
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef int VCHI_MSG_VECTOR_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
typedef int VCHIQ_ELEMENT_T ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ SHIM_SERVICE_T ;


 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 int WARN_ON (int) ;
 int vchiq_queue_message (int ,int const*,int ) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_msg_queuev(VCHI_SERVICE_HANDLE_T handle,
 VCHI_MSG_VECTOR_T *vector,
 uint32_t count,
 VCHI_FLAGS_T flags,
 void *msg_handle)
{
 SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;

 (void)msg_handle;

 WARN_ON(flags != VCHI_FLAGS_BLOCK_UNTIL_QUEUED);

 return vchiq_status_to_vchi(vchiq_queue_message(service->handle,
  (const VCHIQ_ELEMENT_T *)vector, count));
}
