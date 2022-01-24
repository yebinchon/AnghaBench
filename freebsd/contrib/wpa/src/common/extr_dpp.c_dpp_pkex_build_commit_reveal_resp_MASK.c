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
typedef  int u8 ;
typedef  struct wpabuf const wpabuf ;
struct dpp_pkex {int /*<<< orphan*/  z; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int hash_len; } ;
typedef  int /*<<< orphan*/  octet ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_BOOTSTRAP_KEY ; 
 int DPP_ATTR_R_AUTH_TAG ; 
 int DPP_ATTR_WRAPPED_DATA ; 
 size_t DPP_HDR_LEN ; 
 int /*<<< orphan*/  DPP_PA_PKEX_COMMIT_REVEAL_RESP ; 
 int /*<<< orphan*/  DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_PKEX_CR_RESP ; 
 scalar_t__ DPP_TEST_INVALID_BOOTSTRAP_KEY_PKEX_CR_RESP ; 
 scalar_t__ DPP_TEST_NO_BOOTSTRAP_KEY_PKEX_CR_RESP ; 
 scalar_t__ DPP_TEST_NO_R_AUTH_TAG_PKEX_CR_RESP ; 
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_PKEX_CR_RESP ; 
 scalar_t__ DPP_TEST_R_AUTH_TAG_MISMATCH_PKEX_CR_RESP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int const**,size_t*,int*) ; 
 struct wpabuf const* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*,int /*<<< orphan*/ ) ; 
 scalar_t__ dpp_test ; 
 scalar_t__ FUNC3 (struct wpabuf const*,struct dpp_curve_params const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf const* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf const*) ; 
 int* FUNC10 (struct wpabuf const*) ; 
 int FUNC11 (struct wpabuf const*) ; 
 int* FUNC12 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf const*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf const*,int const) ; 

__attribute__((used)) static struct wpabuf *
FUNC17(struct dpp_pkex *pkex,
				  const struct wpabuf *B_pub, const u8 *v)
{
	const struct dpp_curve_params *curve = pkex->own_bi->curve;
	struct wpabuf *msg = NULL;
	const u8 *addr[2];
	size_t len[2];
	u8 octet;
	u8 *wrapped;
	struct wpabuf *clear = NULL;
	size_t clear_len, attr_len;

	/* {B, v [bootstrapping info]}z */
	clear_len = 4 + 2 * curve->prime_len + 4 + curve->hash_len;
	clear = FUNC7(clear_len);
	attr_len = 4 + clear_len + AES_BLOCK_SIZE;
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_PKEX_CR_RESP)
		attr_len += 5;
#endif /* CONFIG_TESTING_OPTIONS */
	msg = FUNC1(DPP_PA_PKEX_COMMIT_REVEAL_RESP, attr_len);
	if (!clear || !msg)
		goto fail;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_BOOTSTRAP_KEY_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Bootstrap Key");
		goto skip_bootstrap_key;
	}
	if (dpp_test == DPP_TEST_INVALID_BOOTSTRAP_KEY_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Bootstrap Key");
		wpabuf_put_le16(clear, DPP_ATTR_BOOTSTRAP_KEY);
		wpabuf_put_le16(clear, 2 * curve->prime_len);
		if (dpp_test_gen_invalid_key(clear, curve) < 0)
			goto fail;
		goto skip_bootstrap_key;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* B in Bootstrap Key attribute */
	FUNC15(clear, DPP_ATTR_BOOTSTRAP_KEY);
	FUNC15(clear, FUNC11(B_pub));
	FUNC13(clear, B_pub);

#ifdef CONFIG_TESTING_OPTIONS
skip_bootstrap_key:
	if (dpp_test == DPP_TEST_NO_R_AUTH_TAG_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no R-Auth tag");
		goto skip_r_auth_tag;
	}
	if (dpp_test == DPP_TEST_R_AUTH_TAG_MISMATCH_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - R-Auth tag mismatch");
		wpabuf_put_le16(clear, DPP_ATTR_R_AUTH_TAG);
		wpabuf_put_le16(clear, curve->hash_len);
		wpabuf_put_data(clear, v, curve->hash_len - 1);
		wpabuf_put_u8(clear, v[curve->hash_len - 1] ^ 0x01);
		goto skip_r_auth_tag;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* v in R-Auth tag attribute */
	FUNC15(clear, DPP_ATTR_R_AUTH_TAG);
	FUNC15(clear, curve->hash_len);
	FUNC14(clear, v, curve->hash_len);

#ifdef CONFIG_TESTING_OPTIONS
skip_r_auth_tag:
	if (dpp_test == DPP_TEST_NO_WRAPPED_DATA_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Wrapped Data");
		goto skip_wrapped_data;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	addr[0] = FUNC10(msg) + 2;
	len[0] = DPP_HDR_LEN;
	octet = 1;
	addr[1] = &octet;
	len[1] = sizeof(octet);
	FUNC4(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);
	FUNC4(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);

	FUNC15(msg, DPP_ATTR_WRAPPED_DATA);
	FUNC15(msg, FUNC11(clear) + AES_BLOCK_SIZE);
	wrapped = FUNC12(msg, FUNC11(clear) + AES_BLOCK_SIZE);

	FUNC5(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
	if (FUNC0(pkex->z, curve->hash_len,
			    FUNC9(clear), FUNC11(clear),
			    2, addr, len, wrapped) < 0)
		goto fail;
	FUNC4(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped, FUNC11(clear) + AES_BLOCK_SIZE);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_PKEX_CR_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - attr after Wrapped Data");
		dpp_build_attr_status(msg, DPP_STATUS_OK);
	}
skip_wrapped_data:
#endif /* CONFIG_TESTING_OPTIONS */

out:
	FUNC8(clear);
	return msg;

fail:
	FUNC8(msg);
	msg = NULL;
	goto out;
}