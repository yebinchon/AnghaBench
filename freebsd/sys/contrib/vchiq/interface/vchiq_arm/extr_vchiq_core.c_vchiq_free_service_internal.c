
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_7__ {int srvstate; int remove_event; int localport; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;




 int VCHIQ_SRVSTATE_FREE ;



 int * srvstate_names ;
 int unlock_service (TYPE_2__*) ;
 int up (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,int ,int ,int ) ;
 int vchiq_log_info (int ,char*,int ,int ) ;
 int vchiq_set_service_state (TYPE_2__*,int ) ;

void
vchiq_free_service_internal(VCHIQ_SERVICE_T *service)
{
 VCHIQ_STATE_T *state = service->state;

 vchiq_log_info(vchiq_core_log_level, "%d: fsi - (%d)",
  state->id, service->localport);

 switch (service->srvstate) {
 case 128:
 case 132:
 case 130:
 case 129:
 case 131:
  break;
 default:
  vchiq_log_error(vchiq_core_log_level,
   "%d: fsi - (%d) in state %s",
   state->id, service->localport,
   srvstate_names[service->srvstate]);
  return;
 }

 vchiq_set_service_state(service, VCHIQ_SRVSTATE_FREE);

 up(&service->remove_event);


 unlock_service(service);
}
