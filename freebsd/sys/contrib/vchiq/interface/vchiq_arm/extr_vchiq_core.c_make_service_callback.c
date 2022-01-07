
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {scalar_t__ (* callback ) (size_t,int *,int ,void*) ;} ;
struct TYPE_7__ {int handle; TYPE_2__* state; TYPE_1__ base; int localport; } ;
typedef TYPE_3__ VCHIQ_SERVICE_T ;
typedef size_t VCHIQ_REASON_T ;
typedef int VCHIQ_HEADER_T ;
struct TYPE_6__ {int id; } ;


 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_SUCCESS ;
 int * reason_names ;
 scalar_t__ stub1 (size_t,int *,int ,void*) ;
 int vchiq_core_log_level ;
 int vchiq_log_trace (int ,char*,int ,int ,int ,unsigned int,unsigned int) ;
 int vchiq_log_warning (int ,char*,int ,int ) ;

__attribute__((used)) static inline VCHIQ_STATUS_T
make_service_callback(VCHIQ_SERVICE_T *service, VCHIQ_REASON_T reason,
 VCHIQ_HEADER_T *header, void *bulk_userdata)
{
 VCHIQ_STATUS_T status;
 vchiq_log_trace(vchiq_core_log_level, "%d: callback:%d (%s, %x, %x)",
  service->state->id, service->localport, reason_names[reason],
  (unsigned int)header, (unsigned int)bulk_userdata);
 status = service->base.callback(reason, header, service->handle,
  bulk_userdata);
 if (status == VCHIQ_ERROR) {
  vchiq_log_warning(vchiq_core_log_level,
   "%d: ignoring ERROR from callback to service %x",
   service->state->id, service->handle);
  status = VCHIQ_SUCCESS;
 }
 return status;
}
