
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct sta_info {int aid; int flags; struct wpabuf* fils_hlp_resp; int wpa_sm; int auth_alg; scalar_t__ p2p_ie; TYPE_5__* dpp_pfs; int owe_group; scalar_t__ owe_ecdh; scalar_t__ qos_map_enabled; struct ieee80211_vht_capabilities* vht_capabilities; } ;
struct ieee802_11_elems {int const* fils_session; } ;
struct ieee80211_vht_capabilities {int vht_capabilities_info; } ;
struct TYPE_15__ {int * variable; void* aid; void* status_code; void* capab_info; } ;
struct TYPE_16__ {TYPE_7__ assoc_resp; } ;
struct ieee80211_mgmt {TYPE_8__ u; int * bssid; int * sa; int * da; int frame_control; } ;
struct hostapd_data {TYPE_6__* conf; scalar_t__ p2p_group; TYPE_4__* iface; TYPE_3__* iconf; int const* own_addr; } ;
typedef enum p2p_status_code { ____Placeholder_p2p_status_code } p2p_status_code ;
struct TYPE_14__ {int wpa_key_mgmt; int p2p; struct wpabuf* assocresp_elements; scalar_t__ wpa; scalar_t__ vendor_vht; scalar_t__ use_sta_nsts; int disable_11ac; } ;
struct TYPE_13__ {struct wpabuf* ie; TYPE_1__* curve; } ;
struct TYPE_12__ {struct wpabuf* fst_ies; TYPE_2__* conf; } ;
struct TYPE_11__ {int rssi_reject_assoc_rssi; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; } ;
struct TYPE_10__ {int vht_capab; } ;
struct TYPE_9__ {scalar_t__ prime_len; } ;


 int BIT (int) ;
 int ETH_ALEN ;
 int FILS_SESSION_LEN ;
 int IEEE80211_FC (int ,int ) ;
 int IEEE80211_HDRLEN ;
 int IEEE80211_MODE_AP ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int P2P_MANAGE ;
 int P2P_SC_FAIL_INVALID_PARAMS ;
 int P2P_SC_FAIL_LIMIT_REACHED ;
 int P2P_SC_SUCCESS ;
 scalar_t__ ParseFailed ;
 int VHT_CAP_BEAMFORMEE_STS_OFFSET ;
 int WLAN_AUTH_FILS_PK ;
 int WLAN_AUTH_FILS_SK ;
 int WLAN_AUTH_FILS_SK_PFS ;
 void* WLAN_EID_EXTENSION ;
 scalar_t__ WLAN_EID_EXT_FILS_SESSION ;
 int WLAN_EID_EXT_OWE_DH_PARAM ;
 int WLAN_FC_STYPE_ASSOC_RESP ;
 int WLAN_FC_STYPE_REASSOC_RESP ;
 int WLAN_FC_TYPE_MGMT ;

 int WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY ;
 int WLAN_STATUS_DENIED_POOR_CHANNEL_CONDITIONS ;

 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_MAYBE_WPS ;
 int WLAN_STA_MULTI_AP ;
 int WLAN_STA_VENDOR_VHT ;
 int WLAN_STA_WMM ;
 int WLAN_STA_WPS ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_OWE ;
 int WPA_PUT_LE16 (int *,int ) ;
 struct wpabuf* crypto_ecdh_get_pubkey (scalar_t__,int ) ;
 int errno ;
 int fils_encrypt_assoc (int ,int *,int,size_t,struct wpabuf*) ;
 void* host_to_le16 (int) ;
 scalar_t__ hostapd_drv_send_mlme (struct hostapd_data*,struct ieee80211_mgmt*,int,int ) ;
 int * hostapd_eid_assoc_comeback_time (struct hostapd_data*,struct sta_info*,int *) ;
 int * hostapd_eid_bss_max_idle_period (struct hostapd_data*,int *) ;
 int * hostapd_eid_ext_capab (struct hostapd_data*,int *) ;
 int * hostapd_eid_ext_supp_rates (struct hostapd_data*,int *) ;
 int * hostapd_eid_he_capab (struct hostapd_data*,int *,int ) ;
 int * hostapd_eid_he_mu_edca_parameter_set (struct hostapd_data*,int *) ;
 int * hostapd_eid_he_operation (struct hostapd_data*,int *) ;
 int * hostapd_eid_ht_capabilities (struct hostapd_data*,int *) ;
 int * hostapd_eid_ht_operation (struct hostapd_data*,int *) ;
 int * hostapd_eid_mbo (struct hostapd_data*,int *,int) ;
 int * hostapd_eid_mbo_rssi_assoc_rej (struct hostapd_data*,int *,int,int) ;
 int * hostapd_eid_multi_ap (struct hostapd_data*,int *) ;
 int * hostapd_eid_p2p_manage (struct hostapd_data*,int *) ;
 int * hostapd_eid_qos_map_set (struct hostapd_data*,int *) ;
 int * hostapd_eid_spatial_reuse (struct hostapd_data*,int *) ;
 int * hostapd_eid_supp_rates (struct hostapd_data*,int *) ;
 int * hostapd_eid_vendor_vht (struct hostapd_data*,int *) ;
 int * hostapd_eid_vht_capabilities (struct hostapd_data*,int *,int) ;
 int * hostapd_eid_vht_operation (struct hostapd_data*,int *) ;
 int * hostapd_eid_wmm (struct hostapd_data*,int *) ;
 int hostapd_own_capab_info (struct hostapd_data*) ;
 scalar_t__ ieee802_11_parse_elems (int const*,size_t,struct ieee802_11_elems*,int ) ;
 int le_to_host32 (int ) ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,int) ;
 int * os_zalloc (size_t) ;
 struct wpabuf* p2p_group_assoc_resp_ie (scalar_t__,int) ;
 int strerror (int ) ;
 int wpa_auth_sta_key_mgmt (int ) ;
 int * wpa_auth_write_assoc_resp_fils (int ,int *,int,int const*,size_t) ;
 int * wpa_auth_write_assoc_resp_owe (int ,int *,int,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int * wpa_sm_write_assoc_resp_ies (int ,int *,int,int ,int const*,size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int const* wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 struct wpabuf* wps_build_assoc_resp_ie () ;

__attribute__((used)) static u16 send_assoc_resp(struct hostapd_data *hapd, struct sta_info *sta,
      const u8 *addr, u16 status_code, int reassoc,
      const u8 *ies, size_t ies_len, int rssi)
{
 int send_len;
 u8 *buf;
 size_t buflen;
 struct ieee80211_mgmt *reply;
 u8 *p;
 u16 res = 128;

 buflen = sizeof(struct ieee80211_mgmt) + 1024;
 buf = os_zalloc(buflen);
 if (!buf) {
  res = WLAN_STATUS_UNSPECIFIED_FAILURE;
  goto done;
 }
 reply = (struct ieee80211_mgmt *) buf;
 reply->frame_control =
  IEEE80211_FC(WLAN_FC_TYPE_MGMT,
        (reassoc ? WLAN_FC_STYPE_REASSOC_RESP :
         WLAN_FC_STYPE_ASSOC_RESP));
 os_memcpy(reply->da, addr, ETH_ALEN);
 os_memcpy(reply->sa, hapd->own_addr, ETH_ALEN);
 os_memcpy(reply->bssid, hapd->own_addr, ETH_ALEN);

 send_len = IEEE80211_HDRLEN;
 send_len += sizeof(reply->u.assoc_resp);
 reply->u.assoc_resp.capab_info =
  host_to_le16(hostapd_own_capab_info(hapd));
 reply->u.assoc_resp.status_code = host_to_le16(status_code);

 reply->u.assoc_resp.aid = host_to_le16((sta ? sta->aid : 0) |
            BIT(14) | BIT(15));

 p = hostapd_eid_supp_rates(hapd, reply->u.assoc_resp.variable);

 p = hostapd_eid_ext_supp_rates(hapd, p);
 p = hostapd_eid_ext_capab(hapd, p);
 p = hostapd_eid_bss_max_idle_period(hapd, p);
 if (sta && sta->qos_map_enabled)
  p = hostapd_eid_qos_map_set(hapd, p);
 if (sta && (sta->flags & WLAN_STA_WMM))
  p = hostapd_eid_wmm(hapd, p);
 if (sta && (sta->flags & WLAN_STA_MULTI_AP))
  p = hostapd_eid_multi_ap(hapd, p);
 p = hostapd_eid_mbo(hapd, p, buf + buflen - p);

 if (hapd->conf->assocresp_elements &&
     (size_t) (buf + buflen - p) >=
     wpabuf_len(hapd->conf->assocresp_elements)) {
  os_memcpy(p, wpabuf_head(hapd->conf->assocresp_elements),
     wpabuf_len(hapd->conf->assocresp_elements));
  p += wpabuf_len(hapd->conf->assocresp_elements);
 }

 send_len += p - reply->u.assoc_resp.variable;
 if (hostapd_drv_send_mlme(hapd, reply, send_len, 0) < 0) {
  wpa_printf(MSG_INFO, "Failed to send assoc resp: %s",
      strerror(errno));
  res = WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

done:
 os_free(buf);
 return res;
}
