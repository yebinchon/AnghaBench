
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_8__ {int remoteport; int localport; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;


 int VCHIQ_POLL_REMOVE ;
 int mark_service_closing (TYPE_2__*) ;
 int request_poll (TYPE_1__*,TYPE_2__*,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ) ;

void
vchiq_terminate_service_internal(VCHIQ_SERVICE_T *service)
{
 VCHIQ_STATE_T *state = service->state;

 vchiq_log_info(vchiq_core_log_level, "%d: tsi - (%d<->%d)",
  state->id, service->localport, service->remoteport);

 mark_service_closing(service);


 request_poll(state, service, VCHIQ_POLL_REMOVE);
}
