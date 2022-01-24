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
typedef  int u16 ;
struct wpa_sm {scalar_t__ proto; TYPE_1__* ctx; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  key_mgmt; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int /*<<< orphan*/ * replay_counter; int /*<<< orphan*/ * key_length; int /*<<< orphan*/ * key_info; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_KEY_INFO_ENCR_KEY_DATA ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 int WPA_KEY_INFO_SECURE ; 
 scalar_t__ WPA_PROTO_OSEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct wpa_sm*,struct wpa_ptk*,int,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t*,void*) ; 

int FUNC6(struct wpa_sm *sm, const unsigned char *dst,
			       const struct wpa_eapol_key *key,
			       u16 ver, u16 key_info,
			       struct wpa_ptk *ptk)
{
	size_t mic_len, hdrlen, rlen;
	struct wpa_eapol_key *reply;
	u8 *rbuf, *key_mic;

	mic_len = FUNC4(sm->key_mgmt, sm->pmk_len);
	hdrlen = sizeof(*reply) + mic_len + 2;
	rbuf = FUNC5(sm, IEEE802_1X_TYPE_EAPOL_KEY, NULL,
				  hdrlen, &rlen, (void *) &reply);
	if (rbuf == NULL)
		return -1;

	reply->type = (sm->proto == WPA_PROTO_RSN ||
		       sm->proto == WPA_PROTO_OSEN) ?
		EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
	key_info &= WPA_KEY_INFO_SECURE;
	key_info |= ver | WPA_KEY_INFO_KEY_TYPE;
	if (mic_len)
		key_info |= WPA_KEY_INFO_MIC;
	else
		key_info |= WPA_KEY_INFO_ENCR_KEY_DATA;
	FUNC0(reply->key_info, key_info);
	if (sm->proto == WPA_PROTO_RSN || sm->proto == WPA_PROTO_OSEN)
		FUNC0(reply->key_length, 0);
	else
		FUNC1(reply->key_length, key->key_length, 2);
	FUNC1(reply->replay_counter, key->replay_counter,
		  WPA_REPLAY_COUNTER_LEN);

	key_mic = (u8 *) (reply + 1);
	FUNC0(key_mic + mic_len, 0);

	FUNC2(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Sending EAPOL-Key 4/4");
	return FUNC3(sm, ptk, ver, dst, ETH_P_EAPOL, rbuf, rlen,
				  key_mic);
}