
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int p2pdev; scalar_t__ p2p_in_provisioning; } ;
struct wpa_ssid {scalar_t__ p2p_group; } ;


 int MSG_DEBUG ;
 scalar_t__ eloop_cancel_timeout (int ,int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_formation_timeout ;

void wpas_p2p_network_removed(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid)
{
 if (wpa_s->p2p_in_provisioning && ssid->p2p_group &&
     eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
     wpa_s->p2pdev, ((void*)0)) > 0) {
  wpa_printf(MSG_DEBUG, "P2P: Canceled group formation due to "
      "P2P group network getting removed");
  eloop_register_timeout(0, 0, wpas_p2p_group_formation_timeout,
           wpa_s->p2pdev, ((void*)0));
 }
}
