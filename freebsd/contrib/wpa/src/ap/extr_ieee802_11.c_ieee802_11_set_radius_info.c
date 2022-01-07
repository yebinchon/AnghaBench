
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vlan_description {scalar_t__* tagged; int untagged; scalar_t__ notempty; } ;
struct TYPE_4__ {int sec; } ;
struct sta_info {char* identity; char* radius_cui; int session_timeout_set; TYPE_2__ session_timeout; scalar_t__ acct_interim_interval; struct hostapd_sta_wpa_psk_short* psk; scalar_t__ vlan_id; int addr; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {scalar_t__ wpa_psk_radius; scalar_t__ acct_interim_interval; int vlan; } ;


 int HOSTAPD_ACL_ACCEPT_TIMEOUT ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_RADIUS ;
 scalar_t__ PSK_RADIUS_IGNORED ;
 int ap_sta_no_session_timeout (struct hostapd_data*,struct sta_info*) ;
 int ap_sta_session_timeout (struct hostapd_data*,struct sta_info*,scalar_t__) ;
 scalar_t__ ap_sta_set_vlan (struct hostapd_data*,struct sta_info*,struct vlan_description*) ;
 int hostapd_free_psk_list (struct hostapd_sta_wpa_psk_short*) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,scalar_t__,...) ;
 int hostapd_vlan_valid (int ,struct vlan_description*) ;
 int os_free (char*) ;
 int os_get_reltime (TYPE_2__*) ;

__attribute__((used)) static int
ieee802_11_set_radius_info(struct hostapd_data *hapd, struct sta_info *sta,
      int res, u32 session_timeout,
      u32 acct_interim_interval,
      struct vlan_description *vlan_id,
      struct hostapd_sta_wpa_psk_short **psk,
      char **identity, char **radius_cui)
{
 if (vlan_id->notempty &&
     !hostapd_vlan_valid(hapd->conf->vlan, vlan_id)) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_INFO,
          "Invalid VLAN %d%s received from RADIUS server",
          vlan_id->untagged,
          vlan_id->tagged[0] ? "+" : "");
  return -1;
 }
 if (ap_sta_set_vlan(hapd, sta, vlan_id) < 0)
  return -1;
 if (sta->vlan_id)
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_INFO, "VLAN ID %d", sta->vlan_id);

 hostapd_free_psk_list(sta->psk);
 if (hapd->conf->wpa_psk_radius != PSK_RADIUS_IGNORED) {
  sta->psk = *psk;
  *psk = ((void*)0);
 } else {
  sta->psk = ((void*)0);
 }

 os_free(sta->identity);
 sta->identity = *identity;
 *identity = ((void*)0);

 os_free(sta->radius_cui);
 sta->radius_cui = *radius_cui;
 *radius_cui = ((void*)0);

 if (hapd->conf->acct_interim_interval == 0 && acct_interim_interval)
  sta->acct_interim_interval = acct_interim_interval;
 if (res == HOSTAPD_ACL_ACCEPT_TIMEOUT) {
  sta->session_timeout_set = 1;
  os_get_reltime(&sta->session_timeout);
  sta->session_timeout.sec += session_timeout;
  ap_sta_session_timeout(hapd, sta, session_timeout);
 } else {
  sta->session_timeout_set = 0;
  ap_sta_no_session_timeout(hapd, sta);
 }

 return 0;
}
