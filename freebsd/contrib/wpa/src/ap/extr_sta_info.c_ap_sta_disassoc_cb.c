
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; } ;
struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int WLAN_STA_PENDING_DISASSOC_CB ;
 int ap_sta_disassoc_cb_timeout (struct hostapd_data*,struct sta_info*) ;
 int eloop_cancel_timeout (int (*) (struct hostapd_data*,struct sta_info*),struct hostapd_data*,struct sta_info*) ;
 int wpa_printf (int ,char*) ;

void ap_sta_disassoc_cb(struct hostapd_data *hapd, struct sta_info *sta)
{
 if (!(sta->flags & WLAN_STA_PENDING_DISASSOC_CB)) {
  wpa_printf(MSG_DEBUG, "Ignore disassoc cb for test frame");
  return;
 }
 sta->flags &= ~WLAN_STA_PENDING_DISASSOC_CB;
 eloop_cancel_timeout(ap_sta_disassoc_cb_timeout, hapd, sta);
 ap_sta_disassoc_cb_timeout(hapd, sta);
}
