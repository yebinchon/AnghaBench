
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t srvstate; int localport; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
struct TYPE_4__ {int id; } ;


 int * srvstate_names ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
vchiq_set_service_state(VCHIQ_SERVICE_T *service, int newstate)
{
 vchiq_log_info(vchiq_core_log_level, "%d: srv:%d %s->%s",
  service->state->id, service->localport,
  srvstate_names[service->srvstate],
  srvstate_names[newstate]);
 service->srvstate = newstate;
}
