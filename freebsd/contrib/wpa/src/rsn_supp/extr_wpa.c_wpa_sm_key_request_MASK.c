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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ proto; int /*<<< orphan*/  ptk; scalar_t__ ptk_set; TYPE_1__* ctx; int /*<<< orphan*/  request_counter; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  key_mgmt; } ;
struct wpa_eapol_key {int /*<<< orphan*/  replay_counter; int /*<<< orphan*/ * key_length; int /*<<< orphan*/ * key_info; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ WPA_CIPHER_TKIP ; 
 int WPA_KEY_INFO_ERROR ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 int WPA_KEY_INFO_REQUEST ; 
 int WPA_KEY_INFO_SECURE ; 
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ; 
 int WPA_KEY_INFO_TYPE_AKM_DEFINED ; 
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ; 
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ; 
 scalar_t__ WPA_PROTO_OSEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t*,void*) ; 
 scalar_t__ FUNC9 (struct wpa_sm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct wpa_sm *sm, int error, int pairwise)
{
	size_t mic_len, hdrlen, rlen;
	struct wpa_eapol_key *reply;
	int key_info, ver;
	u8 bssid[ETH_ALEN], *rbuf, *key_mic, *mic;

	if (FUNC10(sm->key_mgmt))
		ver = WPA_KEY_INFO_TYPE_AKM_DEFINED;
	else if (FUNC4(sm->key_mgmt) ||
		 FUNC5(sm->key_mgmt))
		ver = WPA_KEY_INFO_TYPE_AES_128_CMAC;
	else if (sm->pairwise_cipher != WPA_CIPHER_TKIP)
		ver = WPA_KEY_INFO_TYPE_HMAC_SHA1_AES;
	else
		ver = WPA_KEY_INFO_TYPE_HMAC_MD5_RC4;

	if (FUNC9(sm, bssid) < 0) {
		FUNC7(sm->ctx->msg_ctx, MSG_WARNING,
			"Failed to read BSSID for EAPOL-Key request");
		return;
	}

	mic_len = FUNC6(sm->key_mgmt, sm->pmk_len);
	hdrlen = sizeof(*reply) + mic_len + 2;
	rbuf = FUNC8(sm, IEEE802_1X_TYPE_EAPOL_KEY, NULL,
				  hdrlen, &rlen, (void *) &reply);
	if (rbuf == NULL)
		return;

	reply->type = (sm->proto == WPA_PROTO_RSN ||
		       sm->proto == WPA_PROTO_OSEN) ?
		EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
	key_info = WPA_KEY_INFO_REQUEST | ver;
	if (sm->ptk_set)
		key_info |= WPA_KEY_INFO_SECURE;
	if (sm->ptk_set && mic_len)
		key_info |= WPA_KEY_INFO_MIC;
	if (error)
		key_info |= WPA_KEY_INFO_ERROR;
	if (pairwise)
		key_info |= WPA_KEY_INFO_KEY_TYPE;
	FUNC0(reply->key_info, key_info);
	FUNC0(reply->key_length, 0);
	FUNC2(reply->replay_counter, sm->request_counter,
		  WPA_REPLAY_COUNTER_LEN);
	FUNC1(sm->request_counter, WPA_REPLAY_COUNTER_LEN);

	mic = (u8 *) (reply + 1);
	FUNC0(mic + mic_len, 0);
	if (!(key_info & WPA_KEY_INFO_MIC))
		key_mic = NULL;
	else
		key_mic = mic;

	FUNC7(sm->ctx->msg_ctx, MSG_INFO,
		"WPA: Sending EAPOL-Key Request (error=%d "
		"pairwise=%d ptk_set=%d len=%lu)",
		error, pairwise, sm->ptk_set, (unsigned long) rlen);
	FUNC3(sm, &sm->ptk, ver, bssid, ETH_P_EAPOL, rbuf, rlen,
			   key_mic);
}