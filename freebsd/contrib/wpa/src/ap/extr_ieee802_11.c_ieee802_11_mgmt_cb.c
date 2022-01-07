
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_mgmt {int dummy; } ;
struct hostapd_data {int msg_ctx; scalar_t__ ext_mgmt_frame_handling; } ;


 int MSG_DEBUG ;
 int MSG_EXCESSIVE ;
 int MSG_INFO ;







 int handle_action_cb (struct hostapd_data*,struct ieee80211_mgmt const*,size_t,int) ;
 int handle_assoc_cb (struct hostapd_data*,struct ieee80211_mgmt const*,size_t,int,int) ;
 int handle_auth_cb (struct hostapd_data*,struct ieee80211_mgmt const*,size_t,int) ;
 int handle_deauth_cb (struct hostapd_data*,struct ieee80211_mgmt const*,size_t,int) ;
 int handle_disassoc_cb (struct hostapd_data*,struct ieee80211_mgmt const*,size_t,int) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int wpa_msg (int ,int ,char*,int,int,char*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,size_t,int const*,size_t) ;

void ieee802_11_mgmt_cb(struct hostapd_data *hapd, const u8 *buf, size_t len,
   u16 stype, int ok)
{
 const struct ieee80211_mgmt *mgmt;
 mgmt = (const struct ieee80211_mgmt *) buf;
 switch (stype) {
 case 132:
  wpa_printf(MSG_DEBUG, "mgmt::auth cb");
  handle_auth_cb(hapd, mgmt, len, ok);
  break;
 case 133:
  wpa_printf(MSG_DEBUG, "mgmt::assoc_resp cb");
  handle_assoc_cb(hapd, mgmt, len, 0, ok);
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "mgmt::reassoc_resp cb");
  handle_assoc_cb(hapd, mgmt, len, 1, ok);
  break;
 case 129:
  wpa_printf(MSG_EXCESSIVE, "mgmt::proberesp cb ok=%d", ok);
  break;
 case 131:
  wpa_printf(MSG_DEBUG, "mgmt::deauth cb");
  handle_deauth_cb(hapd, mgmt, len, ok);
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "mgmt::disassoc cb");
  handle_disassoc_cb(hapd, mgmt, len, ok);
  break;
 case 134:
  wpa_printf(MSG_DEBUG, "mgmt::action cb ok=%d", ok);
  handle_action_cb(hapd, mgmt, len, ok);
  break;
 default:
  wpa_printf(MSG_INFO, "unknown mgmt cb frame subtype %d", stype);
  break;
 }
}
