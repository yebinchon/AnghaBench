
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ p2p_group_interface; TYPE_1__* current_ssid; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct TYPE_2__ {scalar_t__ p2p_group; } ;


 scalar_t__ NOT_P2P_GROUP_INTERFACE ;
 int eloop_terminate () ;
 int wpas_p2p_disconnect (struct wpa_supplicant*) ;
 int wpas_wps_terminate_pending (struct wpa_supplicant*) ;

void wpa_supplicant_terminate_proc(struct wpa_global *global)
{
 int pending = 0;
 if (pending)
  return;
 eloop_terminate();
}
