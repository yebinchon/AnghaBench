
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {int disconnected; scalar_t__ reassociate; TYPE_1__ sme; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int radio_remove_works (struct wpa_supplicant*,char*,int ) ;
 int wpa_supplicant_cancel_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpas_network_reenabled ;

void wpas_request_disconnection(struct wpa_supplicant *wpa_s)
{



 wpa_s->reassociate = 0;
 wpa_s->disconnected = 1;
 wpa_supplicant_cancel_sched_scan(wpa_s);
 wpa_supplicant_cancel_scan(wpa_s);
 wpa_supplicant_deauthenticate(wpa_s, WLAN_REASON_DEAUTH_LEAVING);
 eloop_cancel_timeout(wpas_network_reenabled, wpa_s, ((void*)0));
 radio_remove_works(wpa_s, "connect", 0);
 radio_remove_works(wpa_s, "sme-connect", 0);
}
