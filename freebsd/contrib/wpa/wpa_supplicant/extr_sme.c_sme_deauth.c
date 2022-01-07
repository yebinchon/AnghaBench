
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {int pending_bssid; int bssid; TYPE_1__ sme; } ;


 int ETH_ALEN ;
 int MSG_INFO ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int WPA_DISCONNECTED ;
 int is_zero_ether_addr (int ) ;
 int os_memset (int ,int ,int ) ;
 scalar_t__ wpa_drv_deauthenticate (struct wpa_supplicant*,int ,int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;
 int wpas_connection_failed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bssid_changed (struct wpa_supplicant*) ;

__attribute__((used)) static void sme_deauth(struct wpa_supplicant *wpa_s)
{
 int bssid_changed;

 bssid_changed = !is_zero_ether_addr(wpa_s->bssid);

 if (wpa_drv_deauthenticate(wpa_s, wpa_s->pending_bssid,
       WLAN_REASON_DEAUTH_LEAVING) < 0) {
  wpa_msg(wpa_s, MSG_INFO, "SME: Deauth request to the driver "
   "failed");
 }
 wpa_s->sme.prev_bssid_set = 0;

 wpas_connection_failed(wpa_s, wpa_s->pending_bssid);
 wpa_supplicant_set_state(wpa_s, WPA_DISCONNECTED);
 os_memset(wpa_s->bssid, 0, ETH_ALEN);
 os_memset(wpa_s->pending_bssid, 0, ETH_ALEN);
 if (bssid_changed)
  wpas_notify_bssid_changed(wpa_s);
}
