
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int const* req_ies; int req_ies_len; int const* resp_ies; int resp_ies_len; int const* beacon_ies; int beacon_ies_len; scalar_t__ freq; int resp_frame_len; int resp_frame; } ;
union wpa_event_data {TYPE_3__ assoc_info; } ;
typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ auth_alg; int ft_used; int mobility_domain; } ;
struct wpa_supplicant {scalar_t__ hw_capab; int ieee80211ac; int connection_set; int connection_ht; int connection_vht; int connection_he; scalar_t__ auth_alg; int drv_flags; scalar_t__ key_mgmt; int ap_ies_from_associnfo; scalar_t__ assoc_freq; int wpa; TYPE_2__ sme; TYPE_1__* current_ssid; TYPE_4__* dpp_pfs; } ;
struct ieee802_11_elems {int owe_dh_len; int owe_dh; scalar_t__ he_capabilities; scalar_t__ vht_capabilities; scalar_t__ ht_capabilities; } ;
struct TYPE_8__ {int * secret; } ;
struct TYPE_5__ {scalar_t__ key_mgmt; } ;


 scalar_t__ CAPAB_VHT ;
 int ETH_ALEN ;
 int const MOBILITY_DOMAIN_ID_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ ParseFailed ;
 int const WLAN_EID_MOBILITY_DOMAIN ;
 int const WLAN_EID_RSN ;
 int const WLAN_EID_VENDOR_SPECIFIC ;
 int WLAN_EID_VHT_CAP ;
 int WLAN_REASON_INVALID_IE ;
 int WLAN_REASON_UNSPECIFIED ;
 scalar_t__ WPA_AUTH_ALG_FILS ;
 scalar_t__ WPA_AUTH_ALG_FILS_SK_PFS ;
 scalar_t__ WPA_AUTH_ALG_FT ;
 int WPA_DRIVER_FLAGS_SME ;
 scalar_t__ WPA_KEY_MGMT_DPP ;
 scalar_t__ WPA_KEY_MGMT_OWE ;
 scalar_t__ WPA_KEY_MGMT_WPS ;
 int WPS_IE_VENDOR_TYPE ;
 scalar_t__ dpp_pfs_process (TYPE_4__*,int ,int ) ;
 scalar_t__ fils_process_assoc_resp (int ,int ,int ) ;
 scalar_t__ get_ie (int const*,int,int ) ;
 scalar_t__ ieee802_11_parse_elems (int const*,int,struct ieee802_11_elems*,int ) ;
 struct wpabuf* ieee802_11_vendor_ie_concat (int const*,int,int ) ;
 int interworking_process_assoc_resp (struct wpa_supplicant*,int const*,int) ;
 int multi_ap_process_assoc_resp (struct wpa_supplicant*,int const*,int) ;
 scalar_t__ os_memcmp (int const*,char*,int) ;
 int os_memcpy (int ,int const*,int const) ;
 scalar_t__ owe_process_assoc_resp (int ,int*,int const*,int) ;
 int wnm_process_assoc_resp (struct wpa_supplicant*,int const*,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 scalar_t__ wpa_drv_get_bssid (struct wpa_supplicant*,int*) ;
 int wpa_find_assoc_pmkid (struct wpa_supplicant*) ;
 scalar_t__ wpa_ft_is_completed (int ) ;
 scalar_t__ wpa_ft_validate_reassoc_resp (int ,int const*,int,int*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*,scalar_t__,scalar_t__) ;
 int wpa_sm_set_ap_rsn_ie (int ,int const*,int) ;
 int wpa_sm_set_ap_wpa_ie (int ,int const*,int) ;
 scalar_t__ wpa_sm_set_assoc_wpa_ie (int ,int const*,int) ;
 int wpa_sm_set_dpp_z (int ,int *) ;
 int wpa_sm_set_ft_params (int ,int const*,int) ;
 int wpa_sm_set_reset_fils_completed (int ,int) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_update_scan_results (struct wpa_supplicant*) ;
 int wpa_tdls_assoc_resp_ies (int ,int const*,int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_validate_assoc_resp (struct wpabuf*) ;

__attribute__((used)) static int wpa_supplicant_event_associnfo(struct wpa_supplicant *wpa_s,
       union wpa_event_data *data)
{
 int l, len, found = 0, wpa_found, rsn_found;
 const u8 *p;




 wpa_dbg(wpa_s, MSG_DEBUG, "Association info event");
 if (data->assoc_info.req_ies)
  wpa_hexdump(MSG_DEBUG, "req_ies", data->assoc_info.req_ies,
       data->assoc_info.req_ies_len);
 if (data->assoc_info.resp_ies) {
  wpa_hexdump(MSG_DEBUG, "resp_ies", data->assoc_info.resp_ies,
       data->assoc_info.resp_ies_len);
  if (wpa_s->hw_capab == CAPAB_VHT &&
      get_ie(data->assoc_info.resp_ies,
      data->assoc_info.resp_ies_len, WLAN_EID_VHT_CAP))
   wpa_s->ieee80211ac = 1;

  multi_ap_process_assoc_resp(wpa_s, data->assoc_info.resp_ies,
         data->assoc_info.resp_ies_len);
 }
 if (data->assoc_info.beacon_ies)
  wpa_hexdump(MSG_DEBUG, "beacon_ies",
       data->assoc_info.beacon_ies,
       data->assoc_info.beacon_ies_len);
 if (data->assoc_info.freq)
  wpa_dbg(wpa_s, MSG_DEBUG, "freq=%u MHz",
   data->assoc_info.freq);

 wpa_s->connection_set = 0;
 if (data->assoc_info.req_ies && data->assoc_info.resp_ies) {
  struct ieee802_11_elems req_elems, resp_elems;

  if (ieee802_11_parse_elems(data->assoc_info.req_ies,
        data->assoc_info.req_ies_len,
        &req_elems, 0) != ParseFailed &&
      ieee802_11_parse_elems(data->assoc_info.resp_ies,
        data->assoc_info.resp_ies_len,
        &resp_elems, 0) != ParseFailed) {
   wpa_s->connection_set = 1;
   wpa_s->connection_ht = req_elems.ht_capabilities &&
    resp_elems.ht_capabilities;
   wpa_s->connection_vht = req_elems.vht_capabilities &&
    resp_elems.vht_capabilities;
   wpa_s->connection_he = req_elems.he_capabilities &&
    resp_elems.he_capabilities;
  }
 }

 p = data->assoc_info.req_ies;
 l = data->assoc_info.req_ies_len;


 while (p && l >= 2) {
  len = p[1] + 2;
  if (len > l) {
   wpa_hexdump(MSG_DEBUG, "Truncated IE in assoc_info",
        p, l);
   break;
  }
  if ((p[0] == WLAN_EID_VENDOR_SPECIFIC && p[1] >= 6 &&
       (os_memcmp(&p[2], "\x00\x50\xF2\x01\x01\x00", 6) == 0)) ||
      (p[0] == WLAN_EID_VENDOR_SPECIFIC && p[1] >= 4 &&
       (os_memcmp(&p[2], "\x50\x6F\x9A\x12", 4) == 0)) ||
      (p[0] == WLAN_EID_RSN && p[1] >= 2)) {
   if (wpa_sm_set_assoc_wpa_ie(wpa_s->wpa, p, len))
    break;
   found = 1;
   wpa_find_assoc_pmkid(wpa_s);
   break;
  }
  l -= len;
  p += len;
 }
 if (!found && data->assoc_info.req_ies)
  wpa_sm_set_assoc_wpa_ie(wpa_s->wpa, ((void*)0), 0);
 p = data->assoc_info.beacon_ies;
 l = data->assoc_info.beacon_ies_len;



 wpa_found = rsn_found = 0;
 while (p && l >= 2) {
  len = p[1] + 2;
  if (len > l) {
   wpa_hexdump(MSG_DEBUG, "Truncated IE in beacon_ies",
        p, l);
   break;
  }
  if (!wpa_found &&
      p[0] == WLAN_EID_VENDOR_SPECIFIC && p[1] >= 6 &&
      os_memcmp(&p[2], "\x00\x50\xF2\x01\x01\x00", 6) == 0) {
   wpa_found = 1;
   wpa_sm_set_ap_wpa_ie(wpa_s->wpa, p, len);
  }

  if (!rsn_found &&
      p[0] == WLAN_EID_RSN && p[1] >= 2) {
   rsn_found = 1;
   wpa_sm_set_ap_rsn_ie(wpa_s->wpa, p, len);
  }

  l -= len;
  p += len;
 }

 if (!wpa_found && data->assoc_info.beacon_ies)
  wpa_sm_set_ap_wpa_ie(wpa_s->wpa, ((void*)0), 0);
 if (!rsn_found && data->assoc_info.beacon_ies)
  wpa_sm_set_ap_rsn_ie(wpa_s->wpa, ((void*)0), 0);
 if (wpa_found || rsn_found)
  wpa_s->ap_ies_from_associnfo = 1;

 if (wpa_s->assoc_freq && data->assoc_info.freq &&
     wpa_s->assoc_freq != data->assoc_info.freq) {
  wpa_printf(MSG_DEBUG, "Operating frequency changed from "
      "%u to %u MHz",
      wpa_s->assoc_freq, data->assoc_info.freq);
  wpa_supplicant_update_scan_results(wpa_s);
 }

 wpa_s->assoc_freq = data->assoc_info.freq;

 return 0;
}
