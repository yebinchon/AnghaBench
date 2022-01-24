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
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int conf_resp_status; TYPE_1__* curve; int /*<<< orphan*/  ke; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_CONFIG_OBJ ; 
 int DPP_ATTR_ENROLLEE_NONCE ; 
 int DPP_ATTR_WRAPPED_DATA ; 
 int DPP_STATUS_CONFIGURE_FAILURE ; 
 int DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_CONF_RESP ; 
 scalar_t__ DPP_TEST_E_NONCE_MISMATCH_CONF_RESP ; 
 scalar_t__ DPP_TEST_INVALID_STATUS_CONF_RESP ; 
 scalar_t__ DPP_TEST_NO_CONFIG_OBJ_CONF_RESP ; 
 scalar_t__ DPP_TEST_NO_E_NONCE_CONF_RESP ; 
 scalar_t__ DPP_TEST_NO_STATUS_CONF_RESP ; 
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_CONF_RESP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int const**,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 struct wpabuf* FUNC2 (struct dpp_authentication*,int) ; 
 scalar_t__ dpp_test ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int* FUNC9 (struct wpabuf*) ; 
 int FUNC10 (struct wpabuf*) ; 
 int* FUNC11 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,int const) ; 

__attribute__((used)) static struct wpabuf *
FUNC16(struct dpp_authentication *auth, const u8 *e_nonce,
		    u16 e_nonce_len, int ap)
{
	struct wpabuf *conf;
	size_t clear_len, attr_len;
	struct wpabuf *clear = NULL, *msg = NULL;
	u8 *wrapped;
	const u8 *addr[1];
	size_t len[1];
	enum dpp_status_error status;

	conf = FUNC2(auth, ap);
	if (conf) {
		FUNC4(MSG_DEBUG, "DPP: configurationObject JSON",
				  FUNC9(conf), FUNC10(conf));
	}
	status = conf ? DPP_STATUS_OK : DPP_STATUS_CONFIGURE_FAILURE;
	auth->conf_resp_status = status;

	/* { E-nonce, configurationObject}ke */
	clear_len = 4 + e_nonce_len;
	if (conf)
		clear_len += 4 + FUNC10(conf);
	clear = FUNC7(clear_len);
	attr_len = 4 + 1 + 4 + clear_len + AES_BLOCK_SIZE;
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_CONF_RESP)
		attr_len += 5;
#endif /* CONFIG_TESTING_OPTIONS */
	msg = FUNC7(attr_len);
	if (!clear || !msg)
		goto fail;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_E_NONCE_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no E-nonce");
		goto skip_e_nonce;
	}
	if (dpp_test == DPP_TEST_E_NONCE_MISMATCH_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - E-nonce mismatch");
		wpabuf_put_le16(clear, DPP_ATTR_ENROLLEE_NONCE);
		wpabuf_put_le16(clear, e_nonce_len);
		wpabuf_put_data(clear, e_nonce, e_nonce_len - 1);
		wpabuf_put_u8(clear, e_nonce[e_nonce_len - 1] ^ 0x01);
		goto skip_e_nonce;
	}
	if (dpp_test == DPP_TEST_NO_WRAPPED_DATA_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Wrapped Data");
		goto skip_wrapped_data;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* E-nonce */
	FUNC14(clear, DPP_ATTR_ENROLLEE_NONCE);
	FUNC14(clear, e_nonce_len);
	FUNC13(clear, e_nonce, e_nonce_len);

#ifdef CONFIG_TESTING_OPTIONS
skip_e_nonce:
	if (dpp_test == DPP_TEST_NO_CONFIG_OBJ_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - Config Object");
		goto skip_config_obj;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (conf) {
		FUNC14(clear, DPP_ATTR_CONFIG_OBJ);
		FUNC14(clear, FUNC10(conf));
		FUNC12(clear, conf);
	}

#ifdef CONFIG_TESTING_OPTIONS
skip_config_obj:
	if (dpp_test == DPP_TEST_NO_STATUS_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - Status");
		goto skip_status;
	}
	if (dpp_test == DPP_TEST_INVALID_STATUS_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Status");
		status = 255;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* DPP Status */
	FUNC1(msg, status);

#ifdef CONFIG_TESTING_OPTIONS
skip_status:
#endif /* CONFIG_TESTING_OPTIONS */

	addr[0] = FUNC9(msg);
	len[0] = FUNC10(msg);
	FUNC3(MSG_DEBUG, "DDP: AES-SIV AD", addr[0], len[0]);

	FUNC14(msg, DPP_ATTR_WRAPPED_DATA);
	FUNC14(msg, FUNC10(clear) + AES_BLOCK_SIZE);
	wrapped = FUNC11(msg, FUNC10(clear) + AES_BLOCK_SIZE);

	FUNC5(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
	if (FUNC0(auth->ke, auth->curve->hash_len,
			    FUNC9(clear), FUNC10(clear),
			    1, addr, len, wrapped) < 0)
		goto fail;
	FUNC3(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped, FUNC10(clear) + AES_BLOCK_SIZE);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_AFTER_WRAPPED_DATA_CONF_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - attr after Wrapped Data");
		dpp_build_attr_status(msg, DPP_STATUS_OK);
	}
skip_wrapped_data:
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC5(MSG_DEBUG,
			"DPP: Configuration Response attributes", msg);
out:
	FUNC8(conf);
	FUNC8(clear);

	return msg;
fail:
	FUNC8(msg);
	msg = NULL;
	goto out;
}