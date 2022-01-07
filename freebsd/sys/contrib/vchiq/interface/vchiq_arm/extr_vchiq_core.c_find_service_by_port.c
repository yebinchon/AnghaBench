
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** services; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_6__ {scalar_t__ srvstate; scalar_t__ ref_count; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;


 int BUG_ON (int) ;
 unsigned int VCHIQ_PORT_MAX ;
 scalar_t__ VCHIQ_SRVSTATE_FREE ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int) ;

VCHIQ_SERVICE_T *
find_service_by_port(VCHIQ_STATE_T *state, int localport)
{
 VCHIQ_SERVICE_T *service = ((void*)0);
 if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
  spin_lock(&service_spinlock);
  service = state->services[localport];
  if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
   BUG_ON(service->ref_count == 0);
   service->ref_count++;
  } else
   service = ((void*)0);
  spin_unlock(&service_spinlock);
 }

 if (!service)
  vchiq_log_info(vchiq_core_log_level,
   "Invalid port %d", localport);

 return service;
}
