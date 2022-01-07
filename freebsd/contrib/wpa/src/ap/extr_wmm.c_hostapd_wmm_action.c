
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wmm_tspec_element {int dummy; } ;
struct sta_info {int flags; } ;
struct ieee802_11_elems {int wmm_tspec_len; scalar_t__ wmm_tspec; } ;
struct TYPE_5__ {int action_code; } ;
struct TYPE_6__ {TYPE_1__ wmm_action; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {int sa; TYPE_4__ u; } ;
struct hostapd_data {int dummy; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE80211 ;
 size_t IEEE80211_HDRLEN ;
 scalar_t__ ParseFailed ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_WMM ;



 struct sta_info* ap_get_sta (struct hostapd_data*,int ) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,...) ;
 scalar_t__ ieee802_11_parse_elems (int const*,int,struct ieee802_11_elems*,int) ;
 int wmm_addts_req (struct hostapd_data*,struct ieee80211_mgmt const*,struct wmm_tspec_element*,size_t) ;
 int wmm_setup_request (struct hostapd_data*,struct ieee80211_mgmt const*,size_t) ;
 int wmm_teardown (struct hostapd_data*,struct ieee80211_mgmt const*,size_t) ;

void hostapd_wmm_action(struct hostapd_data *hapd,
   const struct ieee80211_mgmt *mgmt, size_t len)
{
 int action_code;
 int left = len - IEEE80211_HDRLEN - 4;
 const u8 *pos = ((const u8 *) mgmt) + IEEE80211_HDRLEN + 4;
 struct ieee802_11_elems elems;
 struct sta_info *sta = ap_get_sta(hapd, mgmt->sa);


 if (!sta ||
     (sta->flags & (WLAN_STA_ASSOC | WLAN_STA_WMM)) !=
     (WLAN_STA_ASSOC | WLAN_STA_WMM)) {
  hostapd_logger(hapd, mgmt->sa, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG,
          "wmm action received is not from associated wmm"
          " station");

  return;
 }

 if (left < 0)
  return;


 if (ieee802_11_parse_elems(pos, left, &elems, 1) == ParseFailed) {
  hostapd_logger(hapd, mgmt->sa, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG,
          "hostapd_wmm_action - could not parse wmm "
          "action");


  return;
 }

 if (!elems.wmm_tspec ||
     elems.wmm_tspec_len != (sizeof(struct wmm_tspec_element) - 2)) {
  hostapd_logger(hapd, mgmt->sa, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG,
          "hostapd_wmm_action - missing or wrong length "
          "tspec");


  return;
 }




 action_code = mgmt->u.action.u.wmm_action.action_code;
 switch (action_code) {
 case 130:
  wmm_addts_req(hapd, mgmt, (struct wmm_tspec_element *)
         (elems.wmm_tspec - 2), len);
  return;
 }

 hostapd_logger(hapd, mgmt->sa, HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_DEBUG,
         "hostapd_wmm_action - unknown action code %d",
         action_code);
}
