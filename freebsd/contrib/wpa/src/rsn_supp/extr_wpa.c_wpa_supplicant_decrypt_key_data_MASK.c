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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u16 ;
struct TYPE_3__ {int kek_len; int /*<<< orphan*/ * kek; } ;
struct wpa_sm {TYPE_2__* ctx; TYPE_1__ ptk; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  ptk_set; } ;
struct wpa_eapol_key {int /*<<< orphan*/ * key_iv; } ;
typedef  int /*<<< orphan*/  ek ;
struct TYPE_4__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 unsigned int WPA_KEY_INFO_TYPE_AES_128_CMAC ; 
 unsigned int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ; 
 unsigned int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct wpa_sm *sm,
					   struct wpa_eapol_key *key,
					   size_t mic_len, u16 ver,
					   u8 *key_data, size_t *key_data_len)
{
	FUNC8(MSG_DEBUG, "RSN: encrypted key data",
		    key_data, *key_data_len);
	if (!sm->ptk_set) {
		FUNC10(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: PTK not available, cannot decrypt EAPOL-Key Key "
			"Data");
		return -1;
	}

	/* Decrypt key data here so that this operation does not need
	 * to be implemented separately for each message type. */
	if (ver == WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 && sm->ptk.kek_len == 16) {
#ifdef CONFIG_NO_RC4
		wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: RC4 not supported in the build");
		return -1;
#else /* CONFIG_NO_RC4 */
		u8 ek[32];

		FUNC11(MSG_DEBUG, "WPA: Decrypt Key Data using RC4");
		FUNC5(ek, key->key_iv, 16);
		FUNC5(ek + 16, sm->ptk.kek, sm->ptk.kek_len);
		if (FUNC7(ek, 32, 256, key_data, *key_data_len)) {
			FUNC3(ek, sizeof(ek));
			FUNC10(sm->ctx->msg_ctx, MSG_ERROR,
				"WPA: RC4 failed");
			return -1;
		}
		FUNC3(ek, sizeof(ek));
#endif /* CONFIG_NO_RC4 */
	} else if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ||
		   ver == WPA_KEY_INFO_TYPE_AES_128_CMAC ||
		   FUNC12(sm->key_mgmt)) {
		u8 *buf;

		FUNC11(MSG_DEBUG,
			   "WPA: Decrypt Key Data using AES-UNWRAP (KEK length %u)",
			   (unsigned int) sm->ptk.kek_len);
		if (*key_data_len < 8 || *key_data_len % 8) {
			FUNC10(sm->ctx->msg_ctx, MSG_WARNING,
				"WPA: Unsupported AES-WRAP len %u",
				(unsigned int) *key_data_len);
			return -1;
		}
		*key_data_len -= 8; /* AES-WRAP adds 8 bytes */
		buf = FUNC4(*key_data_len);
		if (buf == NULL) {
			FUNC10(sm->ctx->msg_ctx, MSG_WARNING,
				"WPA: No memory for AES-UNWRAP buffer");
			return -1;
		}
#ifdef TEST_FUZZ
		os_memset(buf, 0x11, *key_data_len);
#endif /* TEST_FUZZ */
		if (FUNC1(sm->ptk.kek, sm->ptk.kek_len, *key_data_len / 8,
			       key_data, buf)) {
#ifdef TEST_FUZZ
			wpa_printf(MSG_INFO,
				   "TEST: Ignore AES unwrap failure for fuzz testing");
			goto continue_fuzz;
#endif /* TEST_FUZZ */
			FUNC2(buf, *key_data_len);
			FUNC10(sm->ctx->msg_ctx, MSG_WARNING,
				"WPA: AES unwrap failed - "
				"could not decrypt EAPOL-Key key data");
			return -1;
		}
#ifdef TEST_FUZZ
	continue_fuzz:
#endif /* TEST_FUZZ */
		FUNC5(key_data, buf, *key_data_len);
		FUNC2(buf, *key_data_len);
		FUNC0(((u8 *) (key + 1)) + mic_len, *key_data_len);
	} else {
		FUNC10(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: Unsupported key_info type %d", ver);
		return -1;
	}
	FUNC9(MSG_DEBUG, "WPA: decrypted EAPOL-Key key data",
			key_data, *key_data_len);
	return 0;
}