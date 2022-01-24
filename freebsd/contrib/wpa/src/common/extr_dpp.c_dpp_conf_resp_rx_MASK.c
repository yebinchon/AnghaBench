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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {int conf_resp_status; int /*<<< orphan*/  e_nonce; TYPE_1__* curve; int /*<<< orphan*/  ke; } ;
struct TYPE_2__ {scalar_t__ nonce_len; int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DPP_ATTR_CONFIG_OBJ ; 
 int /*<<< orphan*/  DPP_ATTR_ENROLLEE_NONCE ; 
 int /*<<< orphan*/  DPP_ATTR_STATUS ; 
 int /*<<< orphan*/  DPP_ATTR_WRAPPED_DATA ; 
 scalar_t__ const DPP_STATUS_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__,int,scalar_t__ const**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_authentication*,char*) ; 
 scalar_t__ FUNC2 (scalar_t__*,size_t) ; 
 scalar_t__* FUNC3 (scalar_t__*,size_t,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct dpp_authentication*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__* FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (scalar_t__ const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__ const) ; 
 scalar_t__* FUNC11 (struct wpabuf const*) ; 
 size_t FUNC12 (struct wpabuf const*) ; 

int FUNC13(struct dpp_authentication *auth,
		     const struct wpabuf *resp)
{
	const u8 *wrapped_data, *e_nonce, *status, *conf_obj;
	u16 wrapped_data_len, e_nonce_len, status_len, conf_obj_len;
	const u8 *addr[1];
	size_t len[1];
	u8 *unwrapped = NULL;
	size_t unwrapped_len = 0;
	int ret = -1;

	auth->conf_resp_status = 255;

	if (FUNC2(FUNC11(resp), FUNC12(resp)) < 0) {
		FUNC1(auth, "Invalid attribute in config response");
		return -1;
	}

	wrapped_data = FUNC3(FUNC11(resp), FUNC12(resp),
				    DPP_ATTR_WRAPPED_DATA,
				    &wrapped_data_len);
	if (!wrapped_data || wrapped_data_len < AES_BLOCK_SIZE) {
		FUNC1(auth,
			      "Missing or invalid required Wrapped Data attribute");
		return -1;
	}

	FUNC8(MSG_DEBUG, "DPP: AES-SIV ciphertext",
		    wrapped_data, wrapped_data_len);
	unwrapped_len = wrapped_data_len - AES_BLOCK_SIZE;
	unwrapped = FUNC6(unwrapped_len);
	if (!unwrapped)
		return -1;

	addr[0] = FUNC11(resp);
	len[0] = wrapped_data - 4 - (const u8 *) FUNC11(resp);
	FUNC8(MSG_DEBUG, "DDP: AES-SIV AD", addr[0], len[0]);

	if (FUNC0(auth->ke, auth->curve->hash_len,
			    wrapped_data, wrapped_data_len,
			    1, addr, len, unwrapped) < 0) {
		FUNC1(auth, "AES-SIV decryption failed");
		goto fail;
	}
	FUNC8(MSG_DEBUG, "DPP: AES-SIV cleartext",
		    unwrapped, unwrapped_len);

	if (FUNC2(unwrapped, unwrapped_len) < 0) {
		FUNC1(auth, "Invalid attribute in unwrapped data");
		goto fail;
	}

	e_nonce = FUNC3(unwrapped, unwrapped_len,
			       DPP_ATTR_ENROLLEE_NONCE,
			       &e_nonce_len);
	if (!e_nonce || e_nonce_len != auth->curve->nonce_len) {
		FUNC1(auth,
			      "Missing or invalid Enrollee Nonce attribute");
		goto fail;
	}
	FUNC8(MSG_DEBUG, "DPP: Enrollee Nonce", e_nonce, e_nonce_len);
	if (FUNC7(e_nonce, auth->e_nonce, e_nonce_len) != 0) {
		FUNC1(auth, "Enrollee Nonce mismatch");
		goto fail;
	}

	status = FUNC3(FUNC11(resp), FUNC12(resp),
			      DPP_ATTR_STATUS, &status_len);
	if (!status || status_len < 1) {
		FUNC1(auth,
			      "Missing or invalid required DPP Status attribute");
		goto fail;
	}
	auth->conf_resp_status = status[0];
	FUNC10(MSG_DEBUG, "DPP: Status %u", status[0]);
	if (status[0] != DPP_STATUS_OK) {
		FUNC1(auth, "Configurator rejected configuration");
		goto fail;
	}

	conf_obj = FUNC3(unwrapped, unwrapped_len,
				DPP_ATTR_CONFIG_OBJ, &conf_obj_len);
	if (!conf_obj) {
		FUNC1(auth,
			      "Missing required Configuration Object attribute");
		goto fail;
	}
	FUNC9(MSG_DEBUG, "DPP: configurationObject JSON",
			  conf_obj, conf_obj_len);
	if (FUNC4(auth, conf_obj, conf_obj_len) < 0)
		goto fail;

	ret = 0;

fail:
	FUNC5(unwrapped);
	return ret;
}