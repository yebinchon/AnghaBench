
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_bssid; scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {TYPE_1__ sme; } ;
struct disassoc_info {int dummy; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_drv_deauthenticate (struct wpa_supplicant*,int ,int ) ;

void sme_event_disassoc(struct wpa_supplicant *wpa_s,
   struct disassoc_info *info)
{
 wpa_dbg(wpa_s, MSG_DEBUG, "SME: Disassociation event received");
 if (wpa_s->sme.prev_bssid_set) {






  wpa_dbg(wpa_s, MSG_DEBUG, "SME: Deauthenticate to clear "
   "driver state");
  wpa_drv_deauthenticate(wpa_s, wpa_s->sme.prev_bssid,
           WLAN_REASON_DEAUTH_LEAVING);
 }
}
