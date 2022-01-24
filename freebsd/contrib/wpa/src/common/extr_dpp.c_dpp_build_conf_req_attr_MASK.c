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
typedef  char const u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {char const* e_nonce; TYPE_1__* curve; int /*<<< orphan*/  ke; } ;
struct TYPE_2__ {size_t nonce_len; int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_CONFIG_ATTR_OBJ ; 
 int DPP_ATTR_ENROLLEE_NONCE ; 
 int DPP_ATTR_WRAPPED_DATA ; 
 int /*<<< orphan*/  DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_CONF_REQ ; 
 scalar_t__ DPP_TEST_INVALID_E_NONCE_CONF_REQ ; 
 scalar_t__ DPP_TEST_NO_CONFIG_ATTR_OBJ_CONF_REQ ; 
 scalar_t__ DPP_TEST_NO_E_NONCE_CONF_REQ ; 
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_CONF_REQ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ dpp_test ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int FUNC11 (struct wpabuf*) ; 
 char const* FUNC12 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct dpp_authentication *auth,
					       const char *json)
{
	size_t nonce_len;
	size_t json_len, clear_len;
	struct wpabuf *clear = NULL, *msg = NULL;
	u8 *wrapped;
	size_t attr_len;

	FUNC7(MSG_DEBUG, "DPP: Build configuration request");

	nonce_len = auth->curve->nonce_len;
	if (FUNC3(auth->e_nonce, nonce_len)) {
		FUNC7(MSG_ERROR, "DPP: Failed to generate E-nonce");
		goto fail;
	}
	FUNC4(MSG_DEBUG, "DPP: E-nonce", auth->e_nonce, nonce_len);
	json_len = FUNC2(json);
	FUNC5(MSG_DEBUG, "DPP: configAttr JSON", json, json_len);

	/* { E-nonce, configAttrib }ke */
	clear_len = 4 + nonce_len + 4 + json_len;
	clear = FUNC8(clear_len);
	attr_len = 4 + clear_len + AES_BLOCK_SIZE;
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_CONF_REQ)
		attr_len += 5;
#endif /* CONFIG_TESTING_OPTIONS */
	msg = FUNC8(attr_len);
	if (!clear || !msg)
		goto fail;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_E_NONCE_CONF_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no E-nonce");
		goto skip_e_nonce;
	}
	if (dpp_test == DPP_TEST_INVALID_E_NONCE_CONF_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid E-nonce");
		wpabuf_put_le16(clear, DPP_ATTR_ENROLLEE_NONCE);
		wpabuf_put_le16(clear, nonce_len - 1);
		wpabuf_put_data(clear, auth->e_nonce, nonce_len - 1);
		goto skip_e_nonce;
	}
	if (dpp_test == DPP_TEST_NO_WRAPPED_DATA_CONF_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Wrapped Data");
		goto skip_wrapped_data;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* E-nonce */
	FUNC14(clear, DPP_ATTR_ENROLLEE_NONCE);
	FUNC14(clear, nonce_len);
	FUNC13(clear, auth->e_nonce, nonce_len);

#ifdef CONFIG_TESTING_OPTIONS
skip_e_nonce:
	if (dpp_test == DPP_TEST_NO_CONFIG_ATTR_OBJ_CONF_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no configAttrib");
		goto skip_conf_attr_obj;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* configAttrib */
	FUNC14(clear, DPP_ATTR_CONFIG_ATTR_OBJ);
	FUNC14(clear, json_len);
	FUNC13(clear, json, json_len);

#ifdef CONFIG_TESTING_OPTIONS
skip_conf_attr_obj:
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC14(msg, DPP_ATTR_WRAPPED_DATA);
	FUNC14(msg, FUNC11(clear) + AES_BLOCK_SIZE);
	wrapped = FUNC12(msg, FUNC11(clear) + AES_BLOCK_SIZE);

	/* No AES-SIV AD */
	FUNC6(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
	if (FUNC0(auth->ke, auth->curve->hash_len,
			    FUNC10(clear), FUNC11(clear),
			    0, NULL, NULL, wrapped) < 0)
		goto fail;
	FUNC4(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped, FUNC11(clear) + AES_BLOCK_SIZE);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_CONF_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - attr after Wrapped Data");
		dpp_build_attr_status(msg, DPP_STATUS_OK);
	}
skip_wrapped_data:
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC6(MSG_DEBUG,
			"DPP: Configuration Request frame attributes", msg);
	FUNC9(clear);
	return msg;

fail:
	FUNC9(clear);
	FUNC9(msg);
	return NULL;
}