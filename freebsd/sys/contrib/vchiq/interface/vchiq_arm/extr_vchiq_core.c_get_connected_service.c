
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unused_service; TYPE_2__** services; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_7__ {scalar_t__ srvstate; unsigned int remoteport; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;


 scalar_t__ VCHIQ_SRVSTATE_OPEN ;
 int lock_service (TYPE_2__*) ;

__attribute__((used)) static VCHIQ_SERVICE_T *
get_connected_service(VCHIQ_STATE_T *state, unsigned int port)
{
 int i;
 for (i = 0; i < state->unused_service; i++) {
  VCHIQ_SERVICE_T *service = state->services[i];
  if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
   && (service->remoteport == port)) {
   lock_service(service);
   return service;
  }
 }
 return ((void*)0);
}
