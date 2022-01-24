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
struct wpa_sm {TYPE_1__* ctx; } ;
struct wpa_eapol_key {int /*<<< orphan*/  const* key_id; int /*<<< orphan*/  const* key_rsc; int /*<<< orphan*/  const* key_iv; int /*<<< orphan*/  const* key_nonce; int /*<<< orphan*/  const* replay_counter; int /*<<< orphan*/  key_length; int /*<<< orphan*/  type; int /*<<< orphan*/  key_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WPA_KEY_INFO_ACK ; 
 int WPA_KEY_INFO_ENCR_KEY_DATA ; 
 int WPA_KEY_INFO_ERROR ; 
 int WPA_KEY_INFO_INSTALL ; 
 int WPA_KEY_INFO_KEY_INDEX_MASK ; 
 int WPA_KEY_INFO_KEY_INDEX_SHIFT ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 int WPA_KEY_INFO_REQUEST ; 
 int WPA_KEY_INFO_SECURE ; 
 int WPA_KEY_INFO_TYPE_MASK ; 
 unsigned int WPA_NONCE_LEN ; 
 unsigned int WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct wpa_sm *sm,
			       const struct wpa_eapol_key *key,
			       unsigned int key_data_len,
			       const u8 *mic, unsigned int mic_len)
{
#ifndef CONFIG_NO_STDOUT_DEBUG
	u16 key_info = FUNC1(key->key_info);

	FUNC2(sm->ctx->msg_ctx, MSG_DEBUG, "  EAPOL-Key type=%d", key->type);
	FUNC2(sm->ctx->msg_ctx, MSG_DEBUG,
		"  key_info 0x%x (ver=%d keyidx=%d rsvd=%d %s%s%s%s%s%s%s%s)",
		key_info, key_info & WPA_KEY_INFO_TYPE_MASK,
		(key_info & WPA_KEY_INFO_KEY_INDEX_MASK) >>
		WPA_KEY_INFO_KEY_INDEX_SHIFT,
		(key_info & (FUNC0(13) | FUNC0(14) | FUNC0(15))) >> 13,
		key_info & WPA_KEY_INFO_KEY_TYPE ? "Pairwise" : "Group",
		key_info & WPA_KEY_INFO_INSTALL ? " Install" : "",
		key_info & WPA_KEY_INFO_ACK ? " Ack" : "",
		key_info & WPA_KEY_INFO_MIC ? " MIC" : "",
		key_info & WPA_KEY_INFO_SECURE ? " Secure" : "",
		key_info & WPA_KEY_INFO_ERROR ? " Error" : "",
		key_info & WPA_KEY_INFO_REQUEST ? " Request" : "",
		key_info & WPA_KEY_INFO_ENCR_KEY_DATA ? " Encr" : "");
	FUNC2(sm->ctx->msg_ctx, MSG_DEBUG,
		"  key_length=%u key_data_length=%u",
		FUNC1(key->key_length), key_data_len);
	FUNC3(MSG_DEBUG, "  replay_counter",
		    key->replay_counter, WPA_REPLAY_COUNTER_LEN);
	FUNC3(MSG_DEBUG, "  key_nonce", key->key_nonce, WPA_NONCE_LEN);
	FUNC3(MSG_DEBUG, "  key_iv", key->key_iv, 16);
	FUNC3(MSG_DEBUG, "  key_rsc", key->key_rsc, 8);
	FUNC3(MSG_DEBUG, "  key_id (reserved)", key->key_id, 8);
	FUNC3(MSG_DEBUG, "  key_mic", mic, mic_len);
#endif /* CONFIG_NO_STDOUT_DEBUG */
}