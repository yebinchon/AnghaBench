
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er {scalar_t__ multicast_sd; scalar_t__ ssdp_sd; } ;


 int EVENT_TYPE_READ ;
 int close (scalar_t__) ;
 int eloop_unregister_sock (scalar_t__,int ) ;

void wps_er_ssdp_deinit(struct wps_er *er)
{
 if (er->multicast_sd >= 0) {
  eloop_unregister_sock(er->multicast_sd, EVENT_TYPE_READ);
  close(er->multicast_sd);
 }
 if (er->ssdp_sd >= 0) {
  eloop_unregister_sock(er->ssdp_sd, EVENT_TYPE_READ);
  close(er->ssdp_sd);
 }
}
