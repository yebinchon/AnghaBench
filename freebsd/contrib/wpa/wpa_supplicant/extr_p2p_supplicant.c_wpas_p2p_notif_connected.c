
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ ap_iface; scalar_t__ cross_connect_disallowed; TYPE_1__* current_ssid; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 int MSG_DEBUG ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_disable_cross_connect (struct wpa_supplicant*) ;
 int wpas_p2p_enable_cross_connect (struct wpa_supplicant*) ;
 int wpas_p2p_group_idle_timeout ;

void wpas_p2p_notif_connected(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->ap_iface || wpa_s->current_ssid == ((void*)0) ||
     wpa_s->current_ssid->mode != WPAS_MODE_INFRA ||
     wpa_s->cross_connect_disallowed)
  wpas_p2p_disable_cross_connect(wpa_s);
 else
  wpas_p2p_enable_cross_connect(wpa_s);
 if (!wpa_s->ap_iface &&
     eloop_cancel_timeout(wpas_p2p_group_idle_timeout, wpa_s, ((void*)0)) > 0)
  wpa_printf(MSG_DEBUG, "P2P: Cancelled P2P group idle timeout");
}
