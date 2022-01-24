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
typedef  scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; } ;
struct dpp_authentication {int /*<<< orphan*/  e_nonce; TYPE_1__* curve; int /*<<< orphan*/  ke; } ;
struct TYPE_2__ {scalar_t__ nonce_len; int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DPP_ATTR_CONFIG_ATTR_OBJ ; 
 int /*<<< orphan*/  DPP_ATTR_ENROLLEE_NONCE ; 
 int /*<<< orphan*/  DPP_ATTR_WRAPPED_DATA ; 
 scalar_t__ DPP_TEST_STOP_AT_CONF_REQ ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_authentication*,char*) ; 
 struct wpabuf* FUNC2 (struct dpp_authentication*,int /*<<< orphan*/  const*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ dpp_test ; 
 int /*<<< orphan*/  FUNC5 (struct json_token*) ; 
 struct json_token* FUNC6 (struct json_token*,char*) ; 
 struct json_token* FUNC7 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

struct wpabuf *
FUNC15(struct dpp_authentication *auth, const u8 *attr_start,
		size_t attr_len)
{
	const u8 *wrapped_data, *e_nonce, *config_attr;
	u16 wrapped_data_len, e_nonce_len, config_attr_len;
	u8 *unwrapped = NULL;
	size_t unwrapped_len = 0;
	struct wpabuf *resp = NULL;
	struct json_token *root = NULL, *token;
	int ap;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_STOP_AT_CONF_REQ) {
		wpa_printf(MSG_INFO,
			   "DPP: TESTING - stop at Config Request");
		return NULL;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (FUNC3(attr_start, attr_len) < 0) {
		FUNC1(auth, "Invalid attribute in config request");
		return NULL;
	}

	wrapped_data = FUNC4(attr_start, attr_len, DPP_ATTR_WRAPPED_DATA,
				    &wrapped_data_len);
	if (!wrapped_data || wrapped_data_len < AES_BLOCK_SIZE) {
		FUNC1(auth,
			      "Missing or invalid required Wrapped Data attribute");
		return NULL;
	}

	FUNC12(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped_data, wrapped_data_len);
	unwrapped_len = wrapped_data_len - AES_BLOCK_SIZE;
	unwrapped = FUNC9(unwrapped_len);
	if (!unwrapped)
		return NULL;
	if (FUNC0(auth->ke, auth->curve->hash_len,
			    wrapped_data, wrapped_data_len,
			    0, NULL, NULL, unwrapped) < 0) {
		FUNC1(auth, "AES-SIV decryption failed");
		goto fail;
	}
	FUNC12(MSG_DEBUG, "DPP: AES-SIV cleartext",
		    unwrapped, unwrapped_len);

	if (FUNC3(unwrapped, unwrapped_len) < 0) {
		FUNC1(auth, "Invalid attribute in unwrapped data");
		goto fail;
	}

	e_nonce = FUNC4(unwrapped, unwrapped_len,
			       DPP_ATTR_ENROLLEE_NONCE,
			       &e_nonce_len);
	if (!e_nonce || e_nonce_len != auth->curve->nonce_len) {
		FUNC1(auth,
			      "Missing or invalid Enrollee Nonce attribute");
		goto fail;
	}
	FUNC12(MSG_DEBUG, "DPP: Enrollee Nonce", e_nonce, e_nonce_len);
	FUNC10(auth->e_nonce, e_nonce, e_nonce_len);

	config_attr = FUNC4(unwrapped, unwrapped_len,
				   DPP_ATTR_CONFIG_ATTR_OBJ,
				   &config_attr_len);
	if (!config_attr) {
		FUNC1(auth,
			      "Missing or invalid Config Attributes attribute");
		goto fail;
	}
	FUNC13(MSG_DEBUG, "DPP: Config Attributes",
			  config_attr, config_attr_len);

	root = FUNC7((const char *) config_attr, config_attr_len);
	if (!root) {
		FUNC1(auth, "Could not parse Config Attributes");
		goto fail;
	}

	token = FUNC6(root, "name");
	if (!token || token->type != JSON_STRING) {
		FUNC1(auth, "No Config Attributes - name");
		goto fail;
	}
	FUNC14(MSG_DEBUG, "DPP: Enrollee name = '%s'", token->string);

	token = FUNC6(root, "wi-fi_tech");
	if (!token || token->type != JSON_STRING) {
		FUNC1(auth, "No Config Attributes - wi-fi_tech");
		goto fail;
	}
	FUNC14(MSG_DEBUG, "DPP: wi-fi_tech = '%s'", token->string);
	if (FUNC11(token->string, "infra") != 0) {
		FUNC14(MSG_DEBUG, "DPP: Unsupported wi-fi_tech '%s'",
			   token->string);
		FUNC1(auth, "Unsupported wi-fi_tech");
		goto fail;
	}

	token = FUNC6(root, "netRole");
	if (!token || token->type != JSON_STRING) {
		FUNC1(auth, "No Config Attributes - netRole");
		goto fail;
	}
	FUNC14(MSG_DEBUG, "DPP: netRole = '%s'", token->string);
	if (FUNC11(token->string, "sta") == 0) {
		ap = 0;
	} else if (FUNC11(token->string, "ap") == 0) {
		ap = 1;
	} else {
		FUNC14(MSG_DEBUG, "DPP: Unsupported netRole '%s'",
			   token->string);
		FUNC1(auth, "Unsupported netRole");
		goto fail;
	}

	resp = FUNC2(auth, e_nonce, e_nonce_len, ap);

fail:
	FUNC5(root);
	FUNC8(unwrapped);
	return resp;
}