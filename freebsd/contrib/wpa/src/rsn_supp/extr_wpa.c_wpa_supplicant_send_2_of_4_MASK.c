#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
typedef  size_t u16 ;
struct wpa_sm {size_t assoc_resp_ies_len; scalar_t__ proto; TYPE_1__* ctx; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  const* assoc_resp_ies; int /*<<< orphan*/  pmk_r1_name; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int /*<<< orphan*/  const* key_nonce; int /*<<< orphan*/  const* replay_counter; int /*<<< orphan*/  const* key_length; int /*<<< orphan*/  const* key_info; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ PMKID_LEN ; 
 size_t WPA_KEY_INFO_ENCR_KEY_DATA ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 size_t WPA_KEY_INFO_MIC ; 
 size_t WPA_NONCE_LEN ; 
 scalar_t__ WPA_PROTO_OSEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 size_t WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct wpa_sm*,struct wpa_ptk*,int,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/  const*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  const* FUNC11 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t*,void*) ; 

int FUNC12(struct wpa_sm *sm, const unsigned char *dst,
			       const struct wpa_eapol_key *key,
			       int ver, const u8 *nonce,
			       const u8 *wpa_ie, size_t wpa_ie_len,
			       struct wpa_ptk *ptk)
{
	size_t mic_len, hdrlen, rlen;
	struct wpa_eapol_key *reply;
	u8 *rbuf, *key_mic;
	u8 *rsn_ie_buf = NULL;
	u16 key_info;

	if (wpa_ie == NULL) {
		FUNC10(sm->ctx->msg_ctx, MSG_WARNING, "WPA: No wpa_ie set - "
			"cannot generate msg 2/4");
		return -1;
	}

#ifdef CONFIG_IEEE80211R
	if (wpa_key_mgmt_ft(sm->key_mgmt)) {
		int res;

		/*
		 * Add PMKR1Name into RSN IE (PMKID-List) and add MDIE and
		 * FTIE from (Re)Association Response.
		 */
		rsn_ie_buf = os_malloc(wpa_ie_len + 2 + 2 + PMKID_LEN +
				       sm->assoc_resp_ies_len);
		if (rsn_ie_buf == NULL)
			return -1;
		os_memcpy(rsn_ie_buf, wpa_ie, wpa_ie_len);
		res = wpa_insert_pmkid(rsn_ie_buf, &wpa_ie_len,
				       sm->pmk_r1_name);
		if (res < 0) {
			os_free(rsn_ie_buf);
			return -1;
		}

		if (sm->assoc_resp_ies) {
			os_memcpy(rsn_ie_buf + wpa_ie_len, sm->assoc_resp_ies,
				  sm->assoc_resp_ies_len);
			wpa_ie_len += sm->assoc_resp_ies_len;
		}

		wpa_ie = rsn_ie_buf;
	}
#endif /* CONFIG_IEEE80211R */

	FUNC6(MSG_DEBUG, "WPA: WPA IE for msg 2/4", wpa_ie, wpa_ie_len);

	mic_len = FUNC9(sm->key_mgmt, sm->pmk_len);
	hdrlen = sizeof(*reply) + mic_len + 2;
	rbuf = FUNC11(sm, IEEE802_1X_TYPE_EAPOL_KEY,
				  NULL, hdrlen + wpa_ie_len,
				  &rlen, (void *) &reply);
	if (rbuf == NULL) {
		FUNC1(rsn_ie_buf);
		return -1;
	}

	reply->type = (sm->proto == WPA_PROTO_RSN ||
		       sm->proto == WPA_PROTO_OSEN) ?
		EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
	key_info = ver | WPA_KEY_INFO_KEY_TYPE;
	if (mic_len)
		key_info |= WPA_KEY_INFO_MIC;
	else
		key_info |= WPA_KEY_INFO_ENCR_KEY_DATA;
	FUNC0(reply->key_info, key_info);
	if (sm->proto == WPA_PROTO_RSN || sm->proto == WPA_PROTO_OSEN)
		FUNC0(reply->key_length, 0);
	else
		FUNC3(reply->key_length, key->key_length, 2);
	FUNC3(reply->replay_counter, key->replay_counter,
		  WPA_REPLAY_COUNTER_LEN);
	FUNC6(MSG_DEBUG, "WPA: Replay Counter", reply->replay_counter,
		    WPA_REPLAY_COUNTER_LEN);

	key_mic = (u8 *) (reply + 1);
	FUNC0(key_mic + mic_len, wpa_ie_len); /* Key Data Length */
	FUNC3(key_mic + mic_len + 2, wpa_ie, wpa_ie_len); /* Key Data */
	FUNC1(rsn_ie_buf);

	FUNC3(reply->key_nonce, nonce, WPA_NONCE_LEN);

	FUNC4(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Sending EAPOL-Key 2/4");
	return FUNC5(sm, ptk, ver, dst, ETH_P_EAPOL, rbuf, rlen,
				  key_mic);
}