
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sta_info {int wpa_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_radius_attr {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int wpa; int wpa_group; scalar_t__ ieee80211w; int group_mgmt_cipher; scalar_t__ osen; } ;


 int MSG_ERROR ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int RADIUS_ATTR_WLAN_AKM_SUITE ;
 int RADIUS_ATTR_WLAN_GROUP_CIPHER ;
 int RADIUS_ATTR_WLAN_GROUP_MGMT_CIPHER ;
 int RADIUS_ATTR_WLAN_PAIRWISE_CIPHER ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int hostapd_config_get_radius_attr (struct hostapd_radius_attr*,int ) ;
 int radius_msg_add_attr_int32 (struct radius_msg*,int ,int ) ;
 int wpa_akm_to_suite (int) ;
 int wpa_auth_get_pairwise (int ) ;
 int wpa_auth_sta_key_mgmt (int ) ;
 int wpa_auth_sta_wpa_version (int ) ;
 int wpa_cipher_to_suite (int,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int add_common_radius_sta_attr_rsn(struct hostapd_data *hapd,
       struct hostapd_radius_attr *req_attr,
       struct sta_info *sta,
       struct radius_msg *msg)
{
 u32 suite;
 int ver, val;

 ver = wpa_auth_sta_wpa_version(sta->wpa_sm);
 val = wpa_auth_get_pairwise(sta->wpa_sm);
 suite = wpa_cipher_to_suite(ver, val);
 if (val != -1 &&
     !hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_WLAN_PAIRWISE_CIPHER) &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_WLAN_PAIRWISE_CIPHER,
           suite)) {
  wpa_printf(MSG_ERROR, "Could not add WLAN-Pairwise-Cipher");
  return -1;
 }

 suite = wpa_cipher_to_suite(((hapd->conf->wpa & 0x2) ||
         hapd->conf->osen) ?
        WPA_PROTO_RSN : WPA_PROTO_WPA,
        hapd->conf->wpa_group);
 if (!hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_WLAN_GROUP_CIPHER) &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_WLAN_GROUP_CIPHER,
           suite)) {
  wpa_printf(MSG_ERROR, "Could not add WLAN-Group-Cipher");
  return -1;
 }

 val = wpa_auth_sta_key_mgmt(sta->wpa_sm);
 suite = wpa_akm_to_suite(val);
 if (val != -1 &&
     !hostapd_config_get_radius_attr(req_attr,
         RADIUS_ATTR_WLAN_AKM_SUITE) &&
     !radius_msg_add_attr_int32(msg, RADIUS_ATTR_WLAN_AKM_SUITE,
           suite)) {
  wpa_printf(MSG_ERROR, "Could not add WLAN-AKM-Suite");
  return -1;
 }
 return 0;
}
