
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_7__ {scalar_t__ public_fourcc; int srvstate; int service_use_count; int remove_event; scalar_t__ closing; void* remoteport; scalar_t__ client_id; int handle; int auto_close; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;


 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_FOURCC_INVALID ;
 void* VCHIQ_PORT_FREE ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_CLOSED ;
 scalar_t__ VCHIQ_SRVSTATE_CLOSED ;


 scalar_t__ VCHIQ_SRVSTATE_CLOSEWAIT ;


 int WARN (int,char*) ;
 scalar_t__ make_service_callback (TYPE_1__*,int ,int *,int *) ;
 int * srvstate_names ;
 int up (int *) ;
 int vchiq_core_log_level ;
 int vchiq_free_service_internal (TYPE_1__*) ;
 int vchiq_log_error (int ,char*,int ,int ) ;
 int vchiq_release_service_internal (TYPE_1__*) ;
 int vchiq_set_service_state (TYPE_1__*,int) ;

__attribute__((used)) static VCHIQ_STATUS_T
close_service_complete(VCHIQ_SERVICE_T *service, int failstate)
{
 VCHIQ_STATUS_T status;
 int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
 int newstate;

 switch (service->srvstate) {
 case 128:
 case 130:
 case 131:
  if (is_server) {
   if (service->auto_close) {
    service->client_id = 0;
    service->remoteport = VCHIQ_PORT_FREE;
    newstate = 129;
   } else
    newstate = VCHIQ_SRVSTATE_CLOSEWAIT;
  } else
   newstate = VCHIQ_SRVSTATE_CLOSED;
  vchiq_set_service_state(service, newstate);
  break;
 case 129:
  break;
 default:
  vchiq_log_error(vchiq_core_log_level,
   "close_service_complete(%x) called in state %s",
   service->handle, srvstate_names[service->srvstate]);
  WARN(1, "close_service_complete in unexpected state\n");
  return VCHIQ_ERROR;
 }

 status = make_service_callback(service,
  VCHIQ_SERVICE_CLOSED, ((void*)0), ((void*)0));

 if (status != VCHIQ_RETRY) {
  int uc = service->service_use_count;
  int i;

  for (i = 0; i < uc; i++)


   vchiq_release_service_internal(service);

  service->client_id = 0;
  service->remoteport = VCHIQ_PORT_FREE;

  if (service->srvstate == VCHIQ_SRVSTATE_CLOSED)
   vchiq_free_service_internal(service);
  else if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT) {
   if (is_server)
    service->closing = 0;

   up(&service->remove_event);
  }
 } else
  vchiq_set_service_state(service, failstate);

 return status;
}
