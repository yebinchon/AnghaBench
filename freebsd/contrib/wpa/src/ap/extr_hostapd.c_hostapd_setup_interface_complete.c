
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int ready_to_start_in_sync; scalar_t__ state; scalar_t__ need_to_start_in_sync; struct hostapd_data** bss; struct hapd_interfaces* interfaces; } ;
struct hostapd_data {TYPE_1__* conf; int msg_ctx; } ;
struct hapd_interfaces {unsigned int count; struct hostapd_iface** iface; scalar_t__ terminate_on_error; } ;
struct TYPE_2__ {int iface; } ;


 int AP_EVENT_DISABLED ;
 scalar_t__ HAPD_IFACE_DFS ;
 int HAPD_IFACE_DISABLED ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int eloop_terminate () ;
 int hostapd_set_state (struct hostapd_iface*,int ) ;
 int hostapd_setup_interface_complete_sync (struct hostapd_iface*,int) ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_setup_interface_complete(struct hostapd_iface *iface, int err)
{
 struct hapd_interfaces *interfaces = iface->interfaces;
 struct hostapd_data *hapd = iface->bss[0];
 unsigned int i;
 int not_ready_in_sync_ifaces = 0;

 if (!iface->need_to_start_in_sync)
  return hostapd_setup_interface_complete_sync(iface, err);

 if (err) {
  wpa_printf(MSG_ERROR, "Interface initialization failed");
  hostapd_set_state(iface, HAPD_IFACE_DISABLED);
  iface->need_to_start_in_sync = 0;
  wpa_msg(hapd->msg_ctx, MSG_INFO, AP_EVENT_DISABLED);
  if (interfaces && interfaces->terminate_on_error)
   eloop_terminate();
  return -1;
 }

 if (iface->ready_to_start_in_sync) {

  return 0;
 }

 for (i = 0; i < interfaces->count; i++) {
  if (interfaces->iface[i]->need_to_start_in_sync &&
      !interfaces->iface[i]->ready_to_start_in_sync)
   not_ready_in_sync_ifaces++;
 }





 if (not_ready_in_sync_ifaces > 1 && iface->state == HAPD_IFACE_DFS) {




  iface->need_to_start_in_sync = 0;
  wpa_printf(MSG_INFO,
      "%s: Finished CAC - bypass sync and start interface",
      iface->bss[0]->conf->iface);
  return hostapd_setup_interface_complete_sync(iface, err);
 }

 if (not_ready_in_sync_ifaces > 1) {

  iface->ready_to_start_in_sync = 1;
  wpa_printf(MSG_INFO,
      "%s: Interface waiting to sync with other interfaces",
      iface->bss[0]->conf->iface);
  return 0;
 }

 wpa_printf(MSG_INFO,
     "%s: Last interface to sync - starting all interfaces",
     iface->bss[0]->conf->iface);
 iface->need_to_start_in_sync = 0;
 hostapd_setup_interface_complete_sync(iface, err);
 for (i = 0; i < interfaces->count; i++) {
  if (interfaces->iface[i]->need_to_start_in_sync &&
      interfaces->iface[i]->ready_to_start_in_sync) {
   hostapd_setup_interface_complete_sync(
    interfaces->iface[i], 0);

   interfaces->iface[i]->need_to_start_in_sync = 0;
  }
 }

 return 0;
}
