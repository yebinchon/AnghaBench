#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  timestamp ;
struct sta_info {int /*<<< orphan*/  addr; scalar_t__ roaming_consortium; scalar_t__ hs20_ie; struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  radius; TYPE_1__* conf; } ;
struct eapol_state_machine {int const* identity; size_t identity_len; scalar_t__ radius_cui; scalar_t__ last_recv_radius; int /*<<< orphan*/  radius_identifier; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  be32 ;
struct TYPE_4__ {scalar_t__ code; } ;
struct TYPE_3__ {int hs20_release; int /*<<< orphan*/  t_c_timestamp; scalar_t__ t_c_filename; scalar_t__ hs20; scalar_t__ radius_request_cui; int /*<<< orphan*/  radius_auth_req_attr; } ;

/* Variables and functions */
 int const HS20_PPS_MO_ID_PRESENT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  RADIUS_ATTR_CHARGEABLE_USER_IDENTITY ; 
 int /*<<< orphan*/  RADIUS_ATTR_FRAMED_MTU ; 
 int /*<<< orphan*/  RADIUS_ATTR_STATE ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 int /*<<< orphan*/  RADIUS_AUTH ; 
 scalar_t__ RADIUS_CODE_ACCESS_CHALLENGE ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REQUEST ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_WFA_HS20_AP_VERSION ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_WFA_HS20_ROAMING_CONSORTIUM ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_WFA_HS20_STA_VERSION ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_WFA_HS20_TIMESTAMP ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_WFA_HS20_T_C_FILENAME ; 
 scalar_t__ FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ,struct sta_info*,struct radius_msg*) ; 
 scalar_t__ FUNC3 (struct hostapd_data*,struct sta_info*,struct radius_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*,struct eapol_state_machine*,int const*,size_t) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radius_msg*,int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct radius_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radius_msg*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct radius_msg*,int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC14 (struct radius_msg*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct radius_msg*) ; 
 TYPE_2__* FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (struct radius_msg*) ; 
 struct radius_msg* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int const* FUNC20 (scalar_t__) ; 
 int* FUNC21 (scalar_t__) ; 
 int FUNC22 (scalar_t__) ; 

void FUNC23(struct hostapd_data *hapd,
				   struct sta_info *sta,
				   const u8 *eap, size_t len)
{
	struct radius_msg *msg;
	struct eapol_state_machine *sm = sta->eapol_sm;

	if (sm == NULL)
		return;

	FUNC6(hapd, sm, eap, len);

	FUNC19(MSG_DEBUG, "Encapsulating EAP message into a RADIUS "
		   "packet");

	sm->radius_identifier = FUNC8(hapd->radius);
	msg = FUNC18(RADIUS_CODE_ACCESS_REQUEST,
			     sm->radius_identifier);
	if (msg == NULL) {
		FUNC19(MSG_INFO, "Could not create new RADIUS packet");
		return;
	}

	if (FUNC17(msg) < 0) {
		FUNC19(MSG_INFO, "Could not make Request Authenticator");
		goto fail;
	}

	if (sm->identity &&
	    !FUNC10(msg, RADIUS_ATTR_USER_NAME,
				 sm->identity, sm->identity_len)) {
		FUNC19(MSG_INFO, "Could not add User-Name");
		goto fail;
	}

	if (FUNC2(hapd, hapd->conf->radius_auth_req_attr, sta,
				   msg) < 0)
		goto fail;

	if (sta && FUNC3(hapd, sta, msg, 0) < 0)
		goto fail;

	/* TODO: should probably check MTU from driver config; 2304 is max for
	 * IEEE 802.11, but use 1400 to avoid problems with too large packets
	 */
	if (!FUNC5(hapd->conf->radius_auth_req_attr,
					    RADIUS_ATTR_FRAMED_MTU) &&
	    !FUNC11(msg, RADIUS_ATTR_FRAMED_MTU, 1400)) {
		FUNC19(MSG_INFO, "Could not add Framed-MTU");
		goto fail;
	}

	if (!FUNC12(msg, eap, len)) {
		FUNC19(MSG_INFO, "Could not add EAP-Message");
		goto fail;
	}

	/* State attribute must be copied if and only if this packet is
	 * Access-Request reply to the previous Access-Challenge */
	if (sm->last_recv_radius &&
	    FUNC16(sm->last_recv_radius)->code ==
	    RADIUS_CODE_ACCESS_CHALLENGE) {
		int res = FUNC14(msg, sm->last_recv_radius,
					       RADIUS_ATTR_STATE);
		if (res < 0) {
			FUNC19(MSG_INFO, "Could not copy State attribute from previous Access-Challenge");
			goto fail;
		}
		if (res > 0) {
			FUNC19(MSG_DEBUG, "Copied RADIUS State Attribute");
		}
	}

	if (hapd->conf->radius_request_cui) {
		const u8 *cui;
		size_t cui_len;
		/* Add previously learned CUI or nul CUI to request CUI */
		if (sm->radius_cui) {
			cui = FUNC20(sm->radius_cui);
			cui_len = FUNC22(sm->radius_cui);
		} else {
			cui = (const u8 *) "\0";
			cui_len = 1;
		}
		if (!FUNC10(msg,
					 RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
					 cui, cui_len)) {
			FUNC19(MSG_ERROR, "Could not add CUI");
			goto fail;
		}
	}

#ifdef CONFIG_HS20
	if (hapd->conf->hs20) {
		u8 ver = hapd->conf->hs20_release - 1;

		if (!radius_msg_add_wfa(
			    msg, RADIUS_VENDOR_ATTR_WFA_HS20_AP_VERSION,
			    &ver, 1)) {
			wpa_printf(MSG_ERROR, "Could not add HS 2.0 AP "
				   "version");
			goto fail;
		}

		if (sta->hs20_ie && wpabuf_len(sta->hs20_ie) > 0) {
			const u8 *pos;
			u8 buf[3];
			u16 id;
			pos = wpabuf_head_u8(sta->hs20_ie);
			buf[0] = (*pos) >> 4;
			if (((*pos) & HS20_PPS_MO_ID_PRESENT) &&
			    wpabuf_len(sta->hs20_ie) >= 3)
				id = WPA_GET_LE16(pos + 1);
			else
				id = 0;
			WPA_PUT_BE16(buf + 1, id);
			if (!radius_msg_add_wfa(
				    msg,
				    RADIUS_VENDOR_ATTR_WFA_HS20_STA_VERSION,
				    buf, sizeof(buf))) {
				wpa_printf(MSG_ERROR, "Could not add HS 2.0 "
					   "STA version");
				goto fail;
			}
		}

		if (sta->roaming_consortium &&
		    !radius_msg_add_wfa(
			    msg, RADIUS_VENDOR_ATTR_WFA_HS20_ROAMING_CONSORTIUM,
			    wpabuf_head(sta->roaming_consortium),
			    wpabuf_len(sta->roaming_consortium))) {
			wpa_printf(MSG_ERROR,
				   "Could not add HS 2.0 Roaming Consortium");
			goto fail;
		}

		if (hapd->conf->t_c_filename) {
			be32 timestamp;

			if (!radius_msg_add_wfa(
				    msg,
				    RADIUS_VENDOR_ATTR_WFA_HS20_T_C_FILENAME,
				    (const u8 *) hapd->conf->t_c_filename,
				    os_strlen(hapd->conf->t_c_filename))) {
				wpa_printf(MSG_ERROR,
					   "Could not add HS 2.0 T&C Filename");
				goto fail;
			}

			timestamp = host_to_be32(hapd->conf->t_c_timestamp);
			if (!radius_msg_add_wfa(
				    msg,
				    RADIUS_VENDOR_ATTR_WFA_HS20_TIMESTAMP,
				    (const u8 *) &timestamp,
				    sizeof(timestamp))) {
				wpa_printf(MSG_ERROR,
					   "Could not add HS 2.0 Timestamp");
				goto fail;
			}
		}
	}
#endif /* CONFIG_HS20 */

	if (FUNC9(hapd->radius, msg, RADIUS_AUTH, sta->addr) < 0)
		goto fail;

	return;

 fail:
	FUNC15(msg);
}