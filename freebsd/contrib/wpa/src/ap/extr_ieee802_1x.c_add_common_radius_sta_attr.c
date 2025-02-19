
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {scalar_t__ aid; int flags; scalar_t__ auth_alg; scalar_t__ wpa_sm; TYPE_1__* eapol_sm; scalar_t__ acct_session_id; int addr; } ;
struct radius_msg {int dummy; } ;
struct hostapd_radius_attr {int dummy; } ;
struct hostapd_data {TYPE_2__* conf; } ;
typedef int buf ;
struct TYPE_4__ {int wpa; scalar_t__ osen; int mobility_domain; int wpa_key_mgmt; int disable_pmksa_caching; } ;
struct TYPE_3__ {scalar_t__ acct_multi_session_id; } ;


 unsigned long long MAC2STR (int ) ;
 int MSG_ERROR ;
 int MSG_INFO ;
 char* RADIUS_802_1X_ADDR_FORMAT ;
 int RADIUS_ATTR_ACCT_MULTI_SESSION_ID ;
 int RADIUS_ATTR_ACCT_SESSION_ID ;
 int RADIUS_ATTR_CALLING_STATION_ID ;
 int RADIUS_ATTR_CONNECT_INFO ;
 int RADIUS_ATTR_MOBILITY_DOMAIN_ID ;
 int RADIUS_ATTR_NAS_PORT ;
 int RADIUS_ATTR_SERVICE_TYPE ;
 scalar_t__ RADIUS_SERVICE_TYPE_FRAMED ;
 scalar_t__ WLAN_AUTH_FT ;
 int WLAN_STA_PREAUTH ;
 scalar_t__ WPA_GET_BE16 (int ) ;
 scalar_t__ add_common_radius_sta_attr_rsn (struct hostapd_data*,struct hostapd_radius_attr*,struct sta_info*,struct radius_msg*) ;
 int hostapd_config_get_radius_attr (struct hostapd_radius_attr*,int ) ;
 int os_snprintf (char*,int,char*,unsigned long long,...) ;
 int os_strlcpy (char*,char*,int) ;
 int os_strlen (char*) ;
 int radius_mode_txt (struct hostapd_data*) ;
 int radius_msg_add_attr (struct radius_msg*,int ,int *,int ) ;
 int radius_msg_add_attr_int32 (struct radius_msg*,int ,scalar_t__) ;
 int radius_sta_rate (struct hostapd_data*,struct sta_info*) ;
 int wpa_auth_sta_key_mgmt (scalar_t__) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int add_common_radius_sta_attr(struct hostapd_data *hapd,
          struct hostapd_radius_attr *req_attr,
          struct sta_info *sta,
          struct radius_msg *msg)
{
 char buf[128];

 if (!hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_SERVICE_TYPE) &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_SERVICE_TYPE,
           RADIUS_SERVICE_TYPE_FRAMED)) {
  wpa_printf(MSG_ERROR, "Could not add Service-Type");
  return -1;
 }

 if (!hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_NAS_PORT) &&
     sta->aid > 0 &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_NAS_PORT, sta->aid)) {
  wpa_printf(MSG_ERROR, "Could not add NAS-Port");
  return -1;
 }

 os_snprintf(buf, sizeof(buf), RADIUS_802_1X_ADDR_FORMAT,
      MAC2STR(sta->addr));
 buf[sizeof(buf) - 1] = '\0';
 if (!radius_msg_add_attr(msg, RADIUS_ATTR_CALLING_STATION_ID,
     (u8 *) buf, os_strlen(buf))) {
  wpa_printf(MSG_ERROR, "Could not add Calling-Station-Id");
  return -1;
 }

 if (sta->flags & WLAN_STA_PREAUTH) {
  os_strlcpy(buf, "IEEE 802.11i Pre-Authentication",
      sizeof(buf));
 } else {
  os_snprintf(buf, sizeof(buf), "CONNECT %d%sMbps %s",
       radius_sta_rate(hapd, sta) / 2,
       (radius_sta_rate(hapd, sta) & 1) ? ".5" : "",
       radius_mode_txt(hapd));
  buf[sizeof(buf) - 1] = '\0';
 }
 if (!hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_CONNECT_INFO) &&
     !radius_msg_add_attr(msg, RADIUS_ATTR_CONNECT_INFO,
     (u8 *) buf, os_strlen(buf))) {
  wpa_printf(MSG_ERROR, "Could not add Connect-Info");
  return -1;
 }

 if (sta->acct_session_id) {
  os_snprintf(buf, sizeof(buf), "%016llX",
       (unsigned long long) sta->acct_session_id);
  if (!radius_msg_add_attr(msg, RADIUS_ATTR_ACCT_SESSION_ID,
      (u8 *) buf, os_strlen(buf))) {
   wpa_printf(MSG_ERROR, "Could not add Acct-Session-Id");
   return -1;
  }
 }

 if ((hapd->conf->wpa & 2) &&
     !hapd->conf->disable_pmksa_caching &&
     sta->eapol_sm && sta->eapol_sm->acct_multi_session_id) {
  os_snprintf(buf, sizeof(buf), "%016llX",
       (unsigned long long)
       sta->eapol_sm->acct_multi_session_id);
  if (!radius_msg_add_attr(
       msg, RADIUS_ATTR_ACCT_MULTI_SESSION_ID,
       (u8 *) buf, os_strlen(buf))) {
   wpa_printf(MSG_INFO,
       "Could not add Acct-Multi-Session-Id");
   return -1;
  }
 }
 if ((hapd->conf->wpa || hapd->conf->osen) && sta->wpa_sm &&
     add_common_radius_sta_attr_rsn(hapd, req_attr, sta, msg) < 0)
  return -1;

 return 0;
}
