#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {int* r_nonce; int* i_nonce; struct wpabuf* resp_msg; int /*<<< orphan*/  k2; TYPE_3__* curve; TYPE_2__* peer_bi; TYPE_1__* own_bi; int /*<<< orphan*/  ke; int /*<<< orphan*/  secret_len; int /*<<< orphan*/  Nx; int /*<<< orphan*/  Nx_len; int /*<<< orphan*/  peer_protocol_key; void* own_protocol_key; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_7__ {size_t nonce_len; int hash_len; int prime_len; } ;
struct TYPE_6__ {int* pubkey_hash; } ;
struct TYPE_5__ {int* pubkey_hash; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_R_AUTH_TAG ; 
 int /*<<< orphan*/  DPP_MAX_HASH_LEN ; 
 int DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ; 
 scalar_t__ DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ; 
 scalar_t__ DPP_TEST_INVALID_R_PROTO_KEY_AUTH_RESP ; 
 scalar_t__ DPP_TEST_INVALID_STATUS_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_I_NONCE_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_R_AUTH_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_R_NONCE_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_R_PROTO_KEY_AUTH_RESP ; 
 scalar_t__ DPP_TEST_NO_STATUS_AUTH_RESP ; 
 scalar_t__ DPP_TEST_R_AUTH_MISMATCH_AUTH_RESP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 struct wpabuf* FUNC3 (struct dpp_authentication*,int,struct wpabuf*,size_t,int const*,int const*,int const*,int const*,int*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dpp_authentication*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct dpp_authentication*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 void* FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct dpp_authentication*,int*) ; 
 struct wpabuf* FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int const* dpp_nonce_override ; 
 size_t dpp_nonce_override_len ; 
 int /*<<< orphan*/  dpp_protocol_key_override ; 
 scalar_t__ dpp_protocol_key_override_len ; 
 void* FUNC11 (struct dpp_curve_params const**,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ dpp_test ; 
 scalar_t__ FUNC12 (struct wpabuf*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC21(struct dpp_authentication *auth)
{
	size_t nonce_len;
	size_t secret_len;
	struct wpabuf *msg, *pr = NULL;
	u8 r_auth[4 + DPP_MAX_HASH_LEN];
	u8 wrapped_r_auth[4 + DPP_MAX_HASH_LEN + AES_BLOCK_SIZE], *w_r_auth;
	size_t wrapped_r_auth_len;
	int ret = -1;
	const u8 *r_pubkey_hash, *i_pubkey_hash, *r_nonce, *i_nonce;
	enum dpp_status_error status = DPP_STATUS_OK;
#ifdef CONFIG_TESTING_OPTIONS
	u8 test_hash[SHA256_MAC_LEN];
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC18(MSG_DEBUG, "DPP: Build Authentication Response");
	if (!auth->own_bi)
		return -1;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_nonce_override_len > 0) {
		wpa_printf(MSG_INFO, "DPP: TESTING - override R-nonce");
		nonce_len = dpp_nonce_override_len;
		os_memcpy(auth->r_nonce, dpp_nonce_override, nonce_len);
	} else {
		nonce_len = auth->curve->nonce_len;
		if (random_get_bytes(auth->r_nonce, nonce_len)) {
			wpa_printf(MSG_ERROR,
				   "DPP: Failed to generate R-nonce");
			goto fail;
		}
	}
#else /* CONFIG_TESTING_OPTIONS */
	nonce_len = auth->curve->nonce_len;
	if (FUNC15(auth->r_nonce, nonce_len)) {
		FUNC18(MSG_ERROR, "DPP: Failed to generate R-nonce");
		goto fail;
	}
#endif /* CONFIG_TESTING_OPTIONS */
	FUNC16(MSG_DEBUG, "DPP: R-nonce", auth->r_nonce, nonce_len);

	FUNC0(auth->own_protocol_key);
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_protocol_key_override_len) {
		const struct dpp_curve_params *tmp_curve;

		wpa_printf(MSG_INFO,
			   "DPP: TESTING - override protocol key");
		auth->own_protocol_key = dpp_set_keypair(
			&tmp_curve, dpp_protocol_key_override,
			dpp_protocol_key_override_len);
	} else {
		auth->own_protocol_key = dpp_gen_keypair(auth->curve);
	}
#else /* CONFIG_TESTING_OPTIONS */
	auth->own_protocol_key = FUNC8(auth->curve);
#endif /* CONFIG_TESTING_OPTIONS */
	if (!auth->own_protocol_key)
		goto fail;

	pr = FUNC10(auth->own_protocol_key, 0);
	if (!pr)
		goto fail;

	/* ECDH: N = pR * PI */
	if (FUNC7(auth->own_protocol_key, auth->peer_protocol_key,
		     auth->Nx, &secret_len) < 0)
		goto fail;

	FUNC17(MSG_DEBUG, "DPP: ECDH shared secret (N.x)",
			auth->Nx, auth->secret_len);
	auth->Nx_len = auth->secret_len;

	if (FUNC5(auth->Nx, auth->secret_len, auth->k2,
			  auth->curve->hash_len) < 0)
		goto fail;

	if (auth->own_bi && auth->peer_bi) {
		/* Mutual authentication */
		if (FUNC4(auth) < 0)
			goto fail;
	}

	if (FUNC6(auth, auth->ke, auth->curve->hash_len) < 0)
		goto fail;

	/* R-auth = H(I-nonce | R-nonce | PI.x | PR.x | [BI.x |] BR.x | 0) */
	FUNC1(r_auth, DPP_ATTR_R_AUTH_TAG);
	FUNC1(&r_auth[2], auth->curve->hash_len);
	if (FUNC9(auth, r_auth + 4) < 0)
		goto fail;
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_R_AUTH_MISMATCH_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - R-auth mismatch");
		r_auth[4 + auth->curve->hash_len / 2] ^= 0x01;
	}
#endif /* CONFIG_TESTING_OPTIONS */
	if (FUNC2(auth->ke, auth->curve->hash_len,
			    r_auth, 4 + auth->curve->hash_len,
			    0, NULL, NULL, wrapped_r_auth) < 0)
		goto fail;
	wrapped_r_auth_len = 4 + auth->curve->hash_len + AES_BLOCK_SIZE;
	FUNC16(MSG_DEBUG, "DPP: {R-auth}ke",
		    wrapped_r_auth, wrapped_r_auth_len);
	w_r_auth = wrapped_r_auth;

	r_pubkey_hash = auth->own_bi->pubkey_hash;
	if (auth->peer_bi)
		i_pubkey_hash = auth->peer_bi->pubkey_hash;
	else
		i_pubkey_hash = NULL;

	i_nonce = auth->i_nonce;
	r_nonce = auth->r_nonce;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-Bootstrap Key Hash");
		r_pubkey_hash = NULL;
	} else if (dpp_test ==
		   DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP) {
		wpa_printf(MSG_INFO,
			   "DPP: TESTING - invalid R-Bootstrap Key Hash");
		os_memcpy(test_hash, r_pubkey_hash, SHA256_MAC_LEN);
		test_hash[SHA256_MAC_LEN - 1] ^= 0x01;
		r_pubkey_hash = test_hash;
	} else if (dpp_test == DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no I-Bootstrap Key Hash");
		i_pubkey_hash = NULL;
	} else if (dpp_test ==
		   DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP) {
		wpa_printf(MSG_INFO,
			   "DPP: TESTING - invalid I-Bootstrap Key Hash");
		if (i_pubkey_hash)
			os_memcpy(test_hash, i_pubkey_hash, SHA256_MAC_LEN);
		else
			os_memset(test_hash, 0, SHA256_MAC_LEN);
		test_hash[SHA256_MAC_LEN - 1] ^= 0x01;
		i_pubkey_hash = test_hash;
	} else if (dpp_test == DPP_TEST_NO_R_PROTO_KEY_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-Proto Key");
		wpabuf_free(pr);
		pr = NULL;
	} else if (dpp_test == DPP_TEST_INVALID_R_PROTO_KEY_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid R-Proto Key");
		wpabuf_free(pr);
		pr = wpabuf_alloc(2 * auth->curve->prime_len);
		if (!pr || dpp_test_gen_invalid_key(pr, auth->curve) < 0)
			goto fail;
	} else if (dpp_test == DPP_TEST_NO_R_AUTH_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-Auth");
		w_r_auth = NULL;
		wrapped_r_auth_len = 0;
	} else if (dpp_test == DPP_TEST_NO_STATUS_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Status");
		status = 255;
	} else if (dpp_test == DPP_TEST_INVALID_STATUS_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Status");
		status = 254;
	} else if (dpp_test == DPP_TEST_NO_R_NONCE_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-nonce");
		r_nonce = NULL;
	} else if (dpp_test == DPP_TEST_NO_I_NONCE_AUTH_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no I-nonce");
		i_nonce = NULL;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	msg = FUNC3(auth, status, pr, nonce_len,
				  r_pubkey_hash, i_pubkey_hash,
				  r_nonce, i_nonce,
				  w_r_auth, wrapped_r_auth_len,
				  auth->k2);
	if (!msg)
		goto fail;
	FUNC20(auth->resp_msg);
	auth->resp_msg = msg;
	ret = 0;
fail:
	FUNC20(pr);
	return ret;
}