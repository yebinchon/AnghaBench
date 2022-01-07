
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; int addr; int acct_terminate_cause; } ;
struct hostapd_data {int tkip_countermeasures; struct sta_info* sta_list; int wpa_auth; } ;


 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET ;
 int WLAN_REASON_MICHAEL_MIC_FAILURE ;
 int WLAN_STA_AUTH ;
 int ap_free_sta (struct hostapd_data*,struct sta_info*) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,int *) ;
 int hostapd_drv_set_countermeasures (struct hostapd_data*,int) ;
 int hostapd_drv_sta_deauth (struct hostapd_data*,int ,int ) ;
 int hostapd_logger (struct hostapd_data*,int *,int ,int ,char*) ;
 int ieee80211_tkip_countermeasures_stop ;
 int mlme_deauthenticate_indication (struct hostapd_data*,struct sta_info*,int ) ;
 int wpa_auth_countermeasures_start (int ) ;
 int wpa_gtk_rekey (int ) ;

__attribute__((used)) static void ieee80211_tkip_countermeasures_start(struct hostapd_data *hapd)
{
 struct sta_info *sta;

 hostapd_logger(hapd, ((void*)0), HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_INFO, "TKIP countermeasures initiated");

 wpa_auth_countermeasures_start(hapd->wpa_auth);
 hapd->tkip_countermeasures = 1;
 hostapd_drv_set_countermeasures(hapd, 1);
 wpa_gtk_rekey(hapd->wpa_auth);
 eloop_cancel_timeout(ieee80211_tkip_countermeasures_stop, hapd, ((void*)0));
 eloop_register_timeout(60, 0, ieee80211_tkip_countermeasures_stop,
          hapd, ((void*)0));
 while ((sta = hapd->sta_list)) {
  sta->acct_terminate_cause =
   RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET;
  if (sta->flags & WLAN_STA_AUTH) {
   mlme_deauthenticate_indication(
    hapd, sta,
    WLAN_REASON_MICHAEL_MIC_FAILURE);
  }
  hostapd_drv_sta_deauth(hapd, sta->addr,
           WLAN_REASON_MICHAEL_MIC_FAILURE);
  ap_free_sta(hapd, sta);
 }
}
