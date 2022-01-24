#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int const* r_nonce; TYPE_3__* curve; int /*<<< orphan*/  k2; int /*<<< orphan*/  ke; TYPE_2__* own_bi; TYPE_1__* peer_bi; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_6__ {int hash_len; int nonce_len; } ;
struct TYPE_5__ {int* pubkey_hash; } ;
struct TYPE_4__ {int* pubkey_hash; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_I_AUTH_TAG ; 
 int DPP_ATTR_R_NONCE ; 
 size_t DPP_ATTR_WRAPPED_DATA ; 
 int /*<<< orphan*/  DPP_MAX_HASH_LEN ; 
 int /*<<< orphan*/  DPP_MAX_NONCE_LEN ; 
 int /*<<< orphan*/  DPP_PA_AUTHENTICATION_CONF ; 
 int DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_AUTH_CONF ; 
 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_INVALID_STATUS_AUTH_CONF ; 
 scalar_t__ DPP_TEST_I_AUTH_MISMATCH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_NO_I_AUTH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_CONF ; 
 scalar_t__ DPP_TEST_NO_STATUS_AUTH_CONF ; 
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_AUTH_CONF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int*,size_t,int,int const**,size_t*,int*) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 
 scalar_t__ FUNC7 (struct dpp_authentication*,int*) ; 
 scalar_t__ dpp_test ; 
 int /*<<< orphan*/  FUNC8 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int* FUNC14 (struct wpabuf*) ; 
 int* FUNC15 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC17(struct dpp_authentication *auth,
					   enum dpp_status_error status)
{
	struct wpabuf *msg;
	u8 i_auth[4 + DPP_MAX_HASH_LEN];
	size_t i_auth_len;
	u8 r_nonce[4 + DPP_MAX_NONCE_LEN];
	size_t r_nonce_len;
	const u8 *addr[2];
	size_t len[2], attr_len;
	u8 *wrapped_i_auth;
	u8 *wrapped_r_nonce;
	u8 *attr_start, *attr_end;
	const u8 *r_pubkey_hash, *i_pubkey_hash;
#ifdef CONFIG_TESTING_OPTIONS
	u8 test_hash[SHA256_MAC_LEN];
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC12(MSG_DEBUG, "DPP: Build Authentication Confirmation");

	i_auth_len = 4 + auth->curve->hash_len;
	r_nonce_len = 4 + auth->curve->nonce_len;
	/* Build DPP Authentication Confirmation frame attributes */
	attr_len = 4 + 1 + 2 * (4 + SHA256_MAC_LEN) +
		4 + i_auth_len + r_nonce_len + AES_BLOCK_SIZE;
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_AUTH_CONF)
		attr_len += 5;
#endif /* CONFIG_TESTING_OPTIONS */
	msg = FUNC2(DPP_PA_AUTHENTICATION_CONF, attr_len);
	if (!msg)
		goto fail;

	attr_start = FUNC15(msg, 0);

	r_pubkey_hash = auth->peer_bi->pubkey_hash;
	if (auth->own_bi)
		i_pubkey_hash = auth->own_bi->pubkey_hash;
	else
		i_pubkey_hash = NULL;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_STATUS_AUTH_CONF) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Status");
		goto skip_status;
	} else if (dpp_test == DPP_TEST_INVALID_STATUS_AUTH_CONF) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Status");
		status = 254;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* DPP Status */
	FUNC6(msg, status);

#ifdef CONFIG_TESTING_OPTIONS
skip_status:
	if (dpp_test == DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_CONF) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-Bootstrap Key Hash");
		r_pubkey_hash = NULL;
	} else if (dpp_test ==
		   DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_CONF) {
		wpa_printf(MSG_INFO,
			   "DPP: TESTING - invalid R-Bootstrap Key Hash");
		os_memcpy(test_hash, r_pubkey_hash, SHA256_MAC_LEN);
		test_hash[SHA256_MAC_LEN - 1] ^= 0x01;
		r_pubkey_hash = test_hash;
	} else if (dpp_test == DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_CONF) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no I-Bootstrap Key Hash");
		i_pubkey_hash = NULL;
	} else if (dpp_test ==
		   DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_CONF) {
		wpa_printf(MSG_INFO,
			   "DPP: TESTING - invalid I-Bootstrap Key Hash");
		if (i_pubkey_hash)
			os_memcpy(test_hash, i_pubkey_hash, SHA256_MAC_LEN);
		else
			os_memset(test_hash, 0, SHA256_MAC_LEN);
		test_hash[SHA256_MAC_LEN - 1] ^= 0x01;
		i_pubkey_hash = test_hash;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* Responder Bootstrapping Key Hash */
	FUNC5(msg, r_pubkey_hash);

	/* Initiator Bootstrapping Key Hash (mutual authentication) */
	FUNC4(msg, i_pubkey_hash);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_WRAPPED_DATA_AUTH_CONF)
		goto skip_wrapped_data;
	if (dpp_test == DPP_TEST_NO_I_AUTH_AUTH_CONF)
		i_auth_len = 0;
#endif /* CONFIG_TESTING_OPTIONS */

	attr_end = FUNC15(msg, 0);

	/* OUI, OUI type, Crypto Suite, DPP frame type */
	addr[0] = FUNC14(msg) + 2;
	len[0] = 3 + 1 + 1 + 1;
	FUNC10(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);

	/* Attributes before Wrapped Data */
	addr[1] = attr_start;
	len[1] = attr_end - attr_start;
	FUNC10(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);

	if (status == DPP_STATUS_OK) {
		/* I-auth wrapped with ke */
		FUNC16(msg, DPP_ATTR_WRAPPED_DATA);
		FUNC16(msg, i_auth_len + AES_BLOCK_SIZE);
		wrapped_i_auth = FUNC15(msg, i_auth_len + AES_BLOCK_SIZE);

#ifdef CONFIG_TESTING_OPTIONS
		if (dpp_test == DPP_TEST_NO_I_AUTH_AUTH_CONF)
			goto skip_i_auth;
#endif /* CONFIG_TESTING_OPTIONS */

		/* I-auth = H(R-nonce | I-nonce | PR.x | PI.x | BR.x | [BI.x |]
		 *	      1) */
		FUNC0(i_auth, DPP_ATTR_I_AUTH_TAG);
		FUNC0(&i_auth[2], auth->curve->hash_len);
		if (FUNC7(auth, i_auth + 4) < 0)
			goto fail;

#ifdef CONFIG_TESTING_OPTIONS
		if (dpp_test == DPP_TEST_I_AUTH_MISMATCH_AUTH_CONF) {
			wpa_printf(MSG_INFO, "DPP: TESTING - I-auth mismatch");
			i_auth[4 + auth->curve->hash_len / 2] ^= 0x01;
		}
skip_i_auth:
#endif /* CONFIG_TESTING_OPTIONS */
		if (FUNC1(auth->ke, auth->curve->hash_len,
				    i_auth, i_auth_len,
				    2, addr, len, wrapped_i_auth) < 0)
			goto fail;
		FUNC10(MSG_DEBUG, "DPP: {I-auth}ke",
			    wrapped_i_auth, i_auth_len + AES_BLOCK_SIZE);
	} else {
		/* R-nonce wrapped with k2 */
		FUNC16(msg, DPP_ATTR_WRAPPED_DATA);
		FUNC16(msg, r_nonce_len + AES_BLOCK_SIZE);
		wrapped_r_nonce = FUNC15(msg, r_nonce_len + AES_BLOCK_SIZE);

		FUNC0(r_nonce, DPP_ATTR_R_NONCE);
		FUNC0(&r_nonce[2], auth->curve->nonce_len);
		FUNC8(r_nonce + 4, auth->r_nonce, auth->curve->nonce_len);

		if (FUNC1(auth->k2, auth->curve->hash_len,
				    r_nonce, r_nonce_len,
				    2, addr, len, wrapped_r_nonce) < 0)
			goto fail;
		FUNC10(MSG_DEBUG, "DPP: {R-nonce}k2",
			    wrapped_r_nonce, r_nonce_len + AES_BLOCK_SIZE);
	}

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_AUTH_CONF) {
		wpa_printf(MSG_INFO, "DPP: TESTING - attr after Wrapped Data");
		dpp_build_attr_status(msg, DPP_STATUS_OK);
	}
skip_wrapped_data:
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC11(MSG_DEBUG,
			"DPP: Authentication Confirmation frame attributes",
			msg);
	if (status == DPP_STATUS_OK)
		FUNC3(auth);

	return msg;

fail:
	FUNC13(msg);
	return NULL;
}