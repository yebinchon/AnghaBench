
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct hostapd_data {TYPE_5__* conf; TYPE_4__* iconf; TYPE_6__* iface; } ;
struct TYPE_12__ {scalar_t__ num_sta_no_short_preamble; scalar_t__ num_sta_no_short_slot_time; TYPE_3__* current_mode; } ;
struct TYPE_7__ {int keys_set; } ;
struct TYPE_8__ {TYPE_1__ wep; } ;
struct TYPE_11__ {scalar_t__* radio_measurements; scalar_t__ osen; scalar_t__ wpa; scalar_t__ individual_wep_key_len; scalar_t__ default_wep_key_len; scalar_t__ ieee802_1x; TYPE_2__ ssid; } ;
struct TYPE_10__ {scalar_t__ preamble; scalar_t__ spectrum_mgmt_required; } ;
struct TYPE_9__ {scalar_t__ mode; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int IEEE80211_CAP_RRM ;
 int MSG_WARNING ;
 int RRM_CAPABILITIES_IE_LEN ;
 scalar_t__ SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int hostapd_is_dfs_required (TYPE_6__*) ;
 int wpa_printf (int ,char*,int) ;

u16 hostapd_own_capab_info(struct hostapd_data *hapd)
{
 int capab = WLAN_CAPABILITY_ESS;
 int privacy;
 int dfs;
 int i;


 dfs = hostapd_is_dfs_required(hapd->iface);
 if (dfs < 0) {
  wpa_printf(MSG_WARNING, "Failed to check if DFS is required; ret=%d",
      dfs);
  dfs = 0;
 }

 if (hapd->iface->num_sta_no_short_preamble == 0 &&
     hapd->iconf->preamble == SHORT_PREAMBLE)
  capab |= WLAN_CAPABILITY_SHORT_PREAMBLE;

 privacy = hapd->conf->ssid.wep.keys_set;

 if (hapd->conf->ieee802_1x &&
     (hapd->conf->default_wep_key_len ||
      hapd->conf->individual_wep_key_len))
  privacy = 1;

 if (hapd->conf->wpa)
  privacy = 1;






 if (privacy)
  capab |= WLAN_CAPABILITY_PRIVACY;

 if (hapd->iface->current_mode &&
     hapd->iface->current_mode->mode == HOSTAPD_MODE_IEEE80211G &&
     hapd->iface->num_sta_no_short_slot_time == 0)
  capab |= WLAN_CAPABILITY_SHORT_SLOT_TIME;







 if (hapd->iface->current_mode &&
     hapd->iface->current_mode->mode == HOSTAPD_MODE_IEEE80211A &&
     (hapd->iconf->spectrum_mgmt_required || dfs))
  capab |= WLAN_CAPABILITY_SPECTRUM_MGMT;

 for (i = 0; i < RRM_CAPABILITIES_IE_LEN; i++) {
  if (hapd->conf->radio_measurements[i]) {
   capab |= IEEE80211_CAP_RRM;
   break;
  }
 }

 return capab;
}
