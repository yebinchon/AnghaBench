
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int ssdp_sd; scalar_t__ ssdp_sd_registered; } ;


 int ELOOP_ALL_CTX ;
 int EVENT_TYPE_READ ;
 int close (int) ;
 int eloop_cancel_timeout (int ,struct upnp_wps_device_sm*,int ) ;
 int eloop_unregister_sock (int,int ) ;
 int msearchreply_state_machine_handler ;

void ssdp_listener_stop(struct upnp_wps_device_sm *sm)
{
 if (sm->ssdp_sd_registered) {
  eloop_unregister_sock(sm->ssdp_sd, EVENT_TYPE_READ);
  sm->ssdp_sd_registered = 0;
 }

 if (sm->ssdp_sd != -1) {
  close(sm->ssdp_sd);
  sm->ssdp_sd = -1;
 }

 eloop_cancel_timeout(msearchreply_state_machine_handler, sm,
        ELOOP_ALL_CTX);
}
