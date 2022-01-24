#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_crypto_binding {int subtype; int* msk_compound_mac; int* emsk_compound_mac; } ;
struct eap_teap_data {scalar_t__ phase2_success; scalar_t__ cmk_emsk_available; int /*<<< orphan*/  peer_outer_tlvs; int /*<<< orphan*/  server_outer_tlvs; int /*<<< orphan*/  tls_cs; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int EAP_TEAP_CMK_LEN ; 
 int EAP_TEAP_COMPOUND_MAC_LEN ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC ; 
 int TEAP_CRYPTO_BINDING_EMSK_CMAC ; 
 int TEAP_CRYPTO_BINDING_MSK_CMAC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct teap_tlv_crypto_binding const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC1 (struct eap_teap_data*) ; 
 scalar_t__ FUNC2 (struct eap_sm*,struct eap_teap_data*,int*,int*) ; 
 scalar_t__ FUNC3 (struct eap_teap_data*) ; 
 scalar_t__ FUNC4 (struct eap_teap_data*,struct teap_tlv_crypto_binding const*) ; 
 scalar_t__ FUNC5 (struct eap_teap_data*,struct teap_tlv_crypto_binding*,struct teap_tlv_crypto_binding const*,int*,int const*) ; 
 int FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int* FUNC11 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC12(
	struct eap_sm *sm, struct eap_teap_data *data,
	struct eap_method_ret *ret,
	const struct teap_tlv_crypto_binding *cb, size_t bind_len)
{
	struct wpabuf *resp;
	u8 *pos;
	u8 cmk_msk[EAP_TEAP_CMK_LEN];
	u8 cmk_emsk[EAP_TEAP_CMK_LEN];
	const u8 *cmk_emsk_ptr = NULL;
	int res;
	size_t len;
	u8 flags;

	if (FUNC4(data, cb) < 0 ||
	    FUNC2(sm, data, cmk_msk, cmk_emsk) < 0)
		return NULL;

	/* Validate received MSK/EMSK Compound MAC */
	flags = cb->subtype >> 4;

	if (flags == TEAP_CRYPTO_BINDING_MSK_CMAC ||
	    flags == TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC) {
		u8 msk_compound_mac[EAP_TEAP_COMPOUND_MAC_LEN];

		if (FUNC0(data->tls_cs, cb,
					  data->server_outer_tlvs,
					  data->peer_outer_tlvs, cmk_msk,
					  msk_compound_mac) < 0)
			return NULL;
		res = FUNC6(msk_compound_mac, cb->msk_compound_mac,
				      EAP_TEAP_COMPOUND_MAC_LEN);
		FUNC7(MSG_MSGDUMP, "EAP-TEAP: Received MSK Compound MAC",
			    cb->msk_compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
		FUNC7(MSG_MSGDUMP,
			    "EAP-TEAP: Calculated MSK Compound MAC",
			    msk_compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
		if (res != 0) {
			FUNC8(MSG_INFO,
				   "EAP-TEAP: MSK Compound MAC did not match");
			return NULL;
		}
	}

	if ((flags == TEAP_CRYPTO_BINDING_EMSK_CMAC ||
	     flags == TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC) &&
	    data->cmk_emsk_available) {
		u8 emsk_compound_mac[EAP_TEAP_COMPOUND_MAC_LEN];

		if (FUNC0(data->tls_cs, cb,
					  data->server_outer_tlvs,
					  data->peer_outer_tlvs, cmk_emsk,
					  emsk_compound_mac) < 0)
			return NULL;
		res = FUNC6(emsk_compound_mac, cb->emsk_compound_mac,
				      EAP_TEAP_COMPOUND_MAC_LEN);
		FUNC7(MSG_MSGDUMP, "EAP-TEAP: Received EMSK Compound MAC",
			    cb->emsk_compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
		FUNC7(MSG_MSGDUMP,
			    "EAP-TEAP: Calculated EMSK Compound MAC",
			    emsk_compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
		if (res != 0) {
			FUNC8(MSG_INFO,
				   "EAP-TEAP: EMSK Compound MAC did not match");
			return NULL;
		}

		cmk_emsk_ptr = cmk_emsk;
	}

	if (flags == TEAP_CRYPTO_BINDING_EMSK_CMAC &&
	    !data->cmk_emsk_available) {
		FUNC8(MSG_INFO,
			   "EAP-TEAP: Server included only EMSK Compound MAC, but no locally generated inner EAP EMSK to validate this");
		return NULL;
	}

	/*
	 * Compound MAC was valid, so authentication succeeded. Reply with
	 * crypto binding to allow server to complete authentication.
	 */

	len = sizeof(struct teap_tlv_crypto_binding);
	resp = FUNC9(len);
	if (!resp)
		return NULL;

	if (data->phase2_success && FUNC1(data) < 0) {
		FUNC8(MSG_INFO, "EAP-TEAP: Failed to generate MSK");
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		data->phase2_success = 0;
		FUNC10(resp);
		return NULL;
	}

	if (data->phase2_success && FUNC3(data) < 0) {
		FUNC10(resp);
		return NULL;
	}

	pos = FUNC11(resp, sizeof(struct teap_tlv_crypto_binding));
	if (FUNC5(
		    data, (struct teap_tlv_crypto_binding *) pos,
		    cb, cmk_msk, cmk_emsk_ptr) < 0) {
		FUNC10(resp);
		return NULL;
	}

	return resp;
}