#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct sta_info {int aid; int flags; struct wpabuf* fils_hlp_resp; int /*<<< orphan*/  wpa_sm; int /*<<< orphan*/  auth_alg; scalar_t__ p2p_ie; TYPE_5__* dpp_pfs; int /*<<< orphan*/  owe_group; scalar_t__ owe_ecdh; scalar_t__ qos_map_enabled; struct ieee80211_vht_capabilities* vht_capabilities; } ;
struct ieee802_11_elems {int /*<<< orphan*/  const* fils_session; } ;
struct ieee80211_vht_capabilities {int /*<<< orphan*/  vht_capabilities_info; } ;
struct TYPE_15__ {int /*<<< orphan*/ * variable; void* aid; void* status_code; void* capab_info; } ;
struct TYPE_16__ {TYPE_7__ assoc_resp; } ;
struct ieee80211_mgmt {TYPE_8__ u; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * sa; int /*<<< orphan*/ * da; int /*<<< orphan*/  frame_control; } ;
struct hostapd_data {TYPE_6__* conf; scalar_t__ p2p_group; TYPE_4__* iface; TYPE_3__* iconf; int /*<<< orphan*/  const* own_addr; } ;
typedef  enum p2p_status_code { ____Placeholder_p2p_status_code } p2p_status_code ;
struct TYPE_14__ {int wpa_key_mgmt; int p2p; struct wpabuf* assocresp_elements; scalar_t__ wpa; scalar_t__ vendor_vht; scalar_t__ use_sta_nsts; int /*<<< orphan*/  disable_11ac; } ;
struct TYPE_13__ {struct wpabuf* ie; TYPE_1__* curve; } ;
struct TYPE_12__ {struct wpabuf* fst_ies; TYPE_2__* conf; } ;
struct TYPE_11__ {int rssi_reject_assoc_rssi; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; } ;
struct TYPE_10__ {int vht_capab; } ;
struct TYPE_9__ {scalar_t__ prime_len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETH_ALEN ; 
 int FILS_SESSION_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_HDRLEN ; 
 int /*<<< orphan*/  IEEE80211_MODE_AP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int P2P_MANAGE ; 
 int P2P_SC_FAIL_INVALID_PARAMS ; 
 int P2P_SC_FAIL_LIMIT_REACHED ; 
 int P2P_SC_SUCCESS ; 
 scalar_t__ ParseFailed ; 
 int VHT_CAP_BEAMFORMEE_STS_OFFSET ; 
 int /*<<< orphan*/  WLAN_AUTH_FILS_PK ; 
 int /*<<< orphan*/  WLAN_AUTH_FILS_SK ; 
 int /*<<< orphan*/  WLAN_AUTH_FILS_SK_PFS ; 
 void* WLAN_EID_EXTENSION ; 
 scalar_t__ WLAN_EID_EXT_FILS_SESSION ; 
 int /*<<< orphan*/  WLAN_EID_EXT_OWE_DH_PARAM ; 
 int /*<<< orphan*/  WLAN_FC_STYPE_ASSOC_RESP ; 
 int /*<<< orphan*/  WLAN_FC_STYPE_REASSOC_RESP ; 
 int /*<<< orphan*/  WLAN_FC_TYPE_MGMT ; 
#define  WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA 129 
 int WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY ; 
 int WLAN_STATUS_DENIED_POOR_CHANNEL_CONDITIONS ; 
#define  WLAN_STATUS_SUCCESS 128 
 int WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int WLAN_STA_MAYBE_WPS ; 
 int WLAN_STA_MULTI_AP ; 
 int WLAN_STA_VENDOR_VHT ; 
 int WLAN_STA_WMM ; 
 int WLAN_STA_WPS ; 
 int WPA_KEY_MGMT_DPP ; 
 int WPA_KEY_MGMT_OWE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t,struct wpabuf*) ; 
 void* FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct hostapd_data*,struct ieee80211_mgmt*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (struct hostapd_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC17 (struct hostapd_data*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC18 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (struct hostapd_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC25 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct hostapd_data*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/  const*,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC32 (size_t) ; 
 struct wpabuf* FUNC33 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC40 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC41 (struct wpabuf*) ; 
 int FUNC42 (struct wpabuf*) ; 
 struct wpabuf* FUNC43 () ; 

__attribute__((used)) static u16 FUNC44(struct hostapd_data *hapd, struct sta_info *sta,
			   const u8 *addr, u16 status_code, int reassoc,
			   const u8 *ies, size_t ies_len, int rssi)
{
	int send_len;
	u8 *buf;
	size_t buflen;
	struct ieee80211_mgmt *reply;
	u8 *p;
	u16 res = WLAN_STATUS_SUCCESS;

	buflen = sizeof(struct ieee80211_mgmt) + 1024;
#ifdef CONFIG_FILS
	if (sta && sta->fils_hlp_resp)
		buflen += wpabuf_len(sta->fils_hlp_resp);
	if (sta)
		buflen += 150;
#endif /* CONFIG_FILS */
#ifdef CONFIG_OWE
	if (sta && (hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_OWE))
		buflen += 150;
#endif /* CONFIG_OWE */
#ifdef CONFIG_DPP2
	if (sta && sta->dpp_pfs)
		buflen += 5 + sta->dpp_pfs->curve->prime_len;
#endif /* CONFIG_DPP2 */
	buf = FUNC32(buflen);
	if (!buf) {
		res = WLAN_STATUS_UNSPECIFIED_FAILURE;
		goto done;
	}
	reply = (struct ieee80211_mgmt *) buf;
	reply->frame_control =
		FUNC1(WLAN_FC_TYPE_MGMT,
			     (reassoc ? WLAN_FC_STYPE_REASSOC_RESP :
			      WLAN_FC_STYPE_ASSOC_RESP));
	FUNC31(reply->da, addr, ETH_ALEN);
	FUNC31(reply->sa, hapd->own_addr, ETH_ALEN);
	FUNC31(reply->bssid, hapd->own_addr, ETH_ALEN);

	send_len = IEEE80211_HDRLEN;
	send_len += sizeof(reply->u.assoc_resp);
	reply->u.assoc_resp.capab_info =
		FUNC5(FUNC27(hapd));
	reply->u.assoc_resp.status_code = FUNC5(status_code);

	reply->u.assoc_resp.aid = FUNC5((sta ? sta->aid : 0) |
					       FUNC0(14) | FUNC0(15));
	/* Supported rates */
	p = FUNC22(hapd, reply->u.assoc_resp.variable);
	/* Extended supported rates */
	p = FUNC10(hapd, p);

#ifdef CONFIG_MBO
	if (status_code == WLAN_STATUS_DENIED_POOR_CHANNEL_CONDITIONS &&
	    rssi != 0) {
		int delta = hapd->iconf->rssi_reject_assoc_rssi - rssi;

		p = hostapd_eid_mbo_rssi_assoc_rej(hapd, p, buf + buflen - p,
						   delta);
	}
#endif /* CONFIG_MBO */

#ifdef CONFIG_IEEE80211R_AP
	if (sta && status_code == WLAN_STATUS_SUCCESS) {
		/* IEEE 802.11r: Mobility Domain Information, Fast BSS
		 * Transition Information, RSN, [RIC Response] */
		p = wpa_sm_write_assoc_resp_ies(sta->wpa_sm, p,
						buf + buflen - p,
						sta->auth_alg, ies, ies_len);
		if (!p) {
			wpa_printf(MSG_DEBUG,
				   "FT: Failed to write AssocResp IEs");
			res = WLAN_STATUS_UNSPECIFIED_FAILURE;
			goto done;
		}
	}
#endif /* CONFIG_IEEE80211R_AP */
#ifdef CONFIG_FILS
	if (sta && status_code == WLAN_STATUS_SUCCESS &&
	    (sta->auth_alg == WLAN_AUTH_FILS_SK ||
	     sta->auth_alg == WLAN_AUTH_FILS_SK_PFS ||
	     sta->auth_alg == WLAN_AUTH_FILS_PK))
		p = wpa_auth_write_assoc_resp_fils(sta->wpa_sm, p,
						   buf + buflen - p,
						   ies, ies_len);
#endif /* CONFIG_FILS */

#ifdef CONFIG_OWE
	if (sta && status_code == WLAN_STATUS_SUCCESS &&
	    (hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_OWE))
		p = wpa_auth_write_assoc_resp_owe(sta->wpa_sm, p,
						  buf + buflen - p,
						  ies, ies_len);
#endif /* CONFIG_OWE */

#ifdef CONFIG_IEEE80211W
	if (sta && status_code == WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY)
		p = hostapd_eid_assoc_comeback_time(hapd, sta, p);
#endif /* CONFIG_IEEE80211W */

#ifdef CONFIG_IEEE80211N
	p = hostapd_eid_ht_capabilities(hapd, p);
	p = hostapd_eid_ht_operation(hapd, p);
#endif /* CONFIG_IEEE80211N */

#ifdef CONFIG_IEEE80211AC
	if (hapd->iconf->ieee80211ac && !hapd->conf->disable_11ac) {
		u32 nsts = 0, sta_nsts;

		if (sta && hapd->conf->use_sta_nsts && sta->vht_capabilities) {
			struct ieee80211_vht_capabilities *capa;

			nsts = (hapd->iface->conf->vht_capab >>
				VHT_CAP_BEAMFORMEE_STS_OFFSET) & 7;
			capa = sta->vht_capabilities;
			sta_nsts = (le_to_host32(capa->vht_capabilities_info) >>
				    VHT_CAP_BEAMFORMEE_STS_OFFSET) & 7;

			if (nsts < sta_nsts)
				nsts = 0;
			else
				nsts = sta_nsts;
		}
		p = hostapd_eid_vht_capabilities(hapd, p, nsts);
		p = hostapd_eid_vht_operation(hapd, p);
	}
#endif /* CONFIG_IEEE80211AC */

#ifdef CONFIG_IEEE80211AX
	if (hapd->iconf->ieee80211ax) {
		p = hostapd_eid_he_capab(hapd, p, IEEE80211_MODE_AP);
		p = hostapd_eid_he_operation(hapd, p);
		p = hostapd_eid_spatial_reuse(hapd, p);
		p = hostapd_eid_he_mu_edca_parameter_set(hapd, p);
	}
#endif /* CONFIG_IEEE80211AX */

	p = FUNC9(hapd, p);
	p = FUNC8(hapd, p);
	if (sta && sta->qos_map_enabled)
		p = FUNC20(hapd, p);

#ifdef CONFIG_FST
	if (hapd->iface->fst_ies) {
		os_memcpy(p, wpabuf_head(hapd->iface->fst_ies),
			  wpabuf_len(hapd->iface->fst_ies));
		p += wpabuf_len(hapd->iface->fst_ies);
	}
#endif /* CONFIG_FST */

#ifdef CONFIG_OWE
	if ((hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_OWE) &&
	    sta && sta->owe_ecdh && status_code == WLAN_STATUS_SUCCESS &&
	    wpa_auth_sta_key_mgmt(sta->wpa_sm) == WPA_KEY_MGMT_OWE) {
		struct wpabuf *pub;

		pub = crypto_ecdh_get_pubkey(sta->owe_ecdh, 0);
		if (!pub) {
			res = WLAN_STATUS_UNSPECIFIED_FAILURE;
			goto done;
		}
		/* OWE Diffie-Hellman Parameter element */
		*p++ = WLAN_EID_EXTENSION; /* Element ID */
		*p++ = 1 + 2 + wpabuf_len(pub); /* Length */
		*p++ = WLAN_EID_EXT_OWE_DH_PARAM; /* Element ID Extension */
		WPA_PUT_LE16(p, sta->owe_group);
		p += 2;
		os_memcpy(p, wpabuf_head(pub), wpabuf_len(pub));
		p += wpabuf_len(pub);
		wpabuf_free(pub);
	}
#endif /* CONFIG_OWE */

#ifdef CONFIG_DPP2
	if ((hapd->conf->wpa_key_mgmt & WPA_KEY_MGMT_DPP) &&
	    sta && sta->dpp_pfs && status_code == WLAN_STATUS_SUCCESS &&
	    wpa_auth_sta_key_mgmt(sta->wpa_sm) == WPA_KEY_MGMT_DPP) {
		os_memcpy(p, wpabuf_head(sta->dpp_pfs->ie),
			  wpabuf_len(sta->dpp_pfs->ie));
		p += wpabuf_len(sta->dpp_pfs->ie);
	}
#endif /* CONFIG_DPP2 */

#ifdef CONFIG_IEEE80211AC
	if (sta && hapd->conf->vendor_vht && (sta->flags & WLAN_STA_VENDOR_VHT))
		p = hostapd_eid_vendor_vht(hapd, p);
#endif /* CONFIG_IEEE80211AC */

	if (sta && (sta->flags & WLAN_STA_WMM))
		p = FUNC26(hapd, p);

#ifdef CONFIG_WPS
	if (sta &&
	    ((sta->flags & WLAN_STA_WPS) ||
	     ((sta->flags & WLAN_STA_MAYBE_WPS) && hapd->conf->wpa))) {
		struct wpabuf *wps = wps_build_assoc_resp_ie();
		if (wps) {
			os_memcpy(p, wpabuf_head(wps), wpabuf_len(wps));
			p += wpabuf_len(wps);
			wpabuf_free(wps);
		}
	}
#endif /* CONFIG_WPS */

	if (sta && (sta->flags & WLAN_STA_MULTI_AP))
		p = FUNC18(hapd, p);

#ifdef CONFIG_P2P
	if (sta && sta->p2p_ie && hapd->p2p_group) {
		struct wpabuf *p2p_resp_ie;
		enum p2p_status_code status;
		switch (status_code) {
		case WLAN_STATUS_SUCCESS:
			status = P2P_SC_SUCCESS;
			break;
		case WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:
			status = P2P_SC_FAIL_LIMIT_REACHED;
			break;
		default:
			status = P2P_SC_FAIL_INVALID_PARAMS;
			break;
		}
		p2p_resp_ie = p2p_group_assoc_resp_ie(hapd->p2p_group, status);
		if (p2p_resp_ie) {
			os_memcpy(p, wpabuf_head(p2p_resp_ie),
				  wpabuf_len(p2p_resp_ie));
			p += wpabuf_len(p2p_resp_ie);
			wpabuf_free(p2p_resp_ie);
		}
	}
#endif /* CONFIG_P2P */

#ifdef CONFIG_P2P_MANAGER
	if (hapd->conf->p2p & P2P_MANAGE)
		p = hostapd_eid_p2p_manage(hapd, p);
#endif /* CONFIG_P2P_MANAGER */

	p = FUNC16(hapd, p, buf + buflen - p);

	if (hapd->conf->assocresp_elements &&
	    (size_t) (buf + buflen - p) >=
	    FUNC42(hapd->conf->assocresp_elements)) {
		FUNC31(p, FUNC41(hapd->conf->assocresp_elements),
			  FUNC42(hapd->conf->assocresp_elements));
		p += FUNC42(hapd->conf->assocresp_elements);
	}

	send_len += p - reply->u.assoc_resp.variable;

#ifdef CONFIG_FILS
	if (sta &&
	    (sta->auth_alg == WLAN_AUTH_FILS_SK ||
	     sta->auth_alg == WLAN_AUTH_FILS_SK_PFS ||
	     sta->auth_alg == WLAN_AUTH_FILS_PK) &&
	    status_code == WLAN_STATUS_SUCCESS) {
		struct ieee802_11_elems elems;

		if (ieee802_11_parse_elems(ies, ies_len, &elems, 0) ==
		    ParseFailed || !elems.fils_session) {
			res = WLAN_STATUS_UNSPECIFIED_FAILURE;
			goto done;
		}

		/* FILS Session */
		*p++ = WLAN_EID_EXTENSION; /* Element ID */
		*p++ = 1 + FILS_SESSION_LEN; /* Length */
		*p++ = WLAN_EID_EXT_FILS_SESSION; /* Element ID Extension */
		os_memcpy(p, elems.fils_session, FILS_SESSION_LEN);
		send_len += 2 + 1 + FILS_SESSION_LEN;

		send_len = fils_encrypt_assoc(sta->wpa_sm, buf, send_len,
					      buflen, sta->fils_hlp_resp);
		if (send_len < 0) {
			res = WLAN_STATUS_UNSPECIFIED_FAILURE;
			goto done;
		}
	}
#endif /* CONFIG_FILS */

	if (FUNC6(hapd, reply, send_len, 0) < 0) {
		FUNC38(MSG_INFO, "Failed to send assoc resp: %s",
			   FUNC34(errno));
		res = WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

done:
	FUNC30(buf);
	return res;
}