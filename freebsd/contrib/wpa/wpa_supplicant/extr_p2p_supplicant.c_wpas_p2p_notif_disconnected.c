
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ap_iface; } ;


 int eloop_is_timeout_registered (int ,struct wpa_supplicant*,int *) ;
 int wpas_p2p_disable_cross_connect (struct wpa_supplicant*) ;
 int wpas_p2p_group_idle_timeout ;
 int wpas_p2p_set_group_idle_timeout (struct wpa_supplicant*) ;

void wpas_p2p_notif_disconnected(struct wpa_supplicant *wpa_s)
{
 wpas_p2p_disable_cross_connect(wpa_s);
 if (!wpa_s->ap_iface &&
     !eloop_is_timeout_registered(wpas_p2p_group_idle_timeout,
      wpa_s, ((void*)0)))
  wpas_p2p_set_group_idle_timeout(wpa_s);
}
