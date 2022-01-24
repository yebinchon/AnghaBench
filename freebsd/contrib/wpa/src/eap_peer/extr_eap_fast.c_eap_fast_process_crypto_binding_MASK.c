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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_tlv_crypto_binding_tlv {int /*<<< orphan*/ * compound_mac; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;
struct eap_fast_data {int id_len; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  ssl; scalar_t__ phase2_success; int /*<<< orphan*/  anon_provisioning; } ;
typedef  int /*<<< orphan*/  cmac ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int EAP_FAST_CMK_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_FAST ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int SHA1_MAC_LEN ; 
 scalar_t__ FUNC0 (struct eap_fast_data*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_fast_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct eap_tlv_crypto_binding_tlv*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_tlv_crypto_binding_tlv*,struct eap_tlv_crypto_binding_tlv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC14 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC15(
	struct eap_sm *sm, struct eap_fast_data *data,
	struct eap_method_ret *ret,
	struct eap_tlv_crypto_binding_tlv *_bind, size_t bind_len)
{
	struct wpabuf *resp;
	u8 *pos;
	u8 cmk[EAP_FAST_CMK_LEN], cmac[SHA1_MAC_LEN];
	int res;
	size_t len;

	if (FUNC2(_bind) < 0)
		return NULL;

	if (FUNC1(sm, data, cmk) < 0)
		return NULL;

	/* Validate received Compound MAC */
	FUNC8(cmac, _bind->compound_mac, sizeof(cmac));
	FUNC9(_bind->compound_mac, 0, sizeof(cmac));
	FUNC10(MSG_MSGDUMP, "EAP-FAST: Crypto-Binding TLV for Compound "
		    "MAC calculation", (u8 *) _bind, bind_len);
	FUNC5(cmk, EAP_FAST_CMK_LEN, (u8 *) _bind, bind_len,
		  _bind->compound_mac);
	res = FUNC7(cmac, _bind->compound_mac, sizeof(cmac));
	FUNC10(MSG_MSGDUMP, "EAP-FAST: Received Compound MAC",
		    cmac, sizeof(cmac));
	FUNC10(MSG_MSGDUMP, "EAP-FAST: Calculated Compound MAC",
		    _bind->compound_mac, sizeof(cmac));
	if (res != 0) {
		FUNC11(MSG_INFO, "EAP-FAST: Compound MAC did not match");
		FUNC8(_bind->compound_mac, cmac, sizeof(cmac));
		return NULL;
	}

	/*
	 * Compound MAC was valid, so authentication succeeded. Reply with
	 * crypto binding to allow server to complete authentication.
	 */

	len = sizeof(struct eap_tlv_crypto_binding_tlv);
	resp = FUNC12(len);
	if (resp == NULL)
		return NULL;

	if (!data->anon_provisioning && data->phase2_success &&
	    FUNC0(data) < 0) {
		FUNC11(MSG_INFO, "EAP-FAST: Failed to generate MSK");
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		data->phase2_success = 0;
		FUNC13(resp);
		return NULL;
	}

	if (!data->anon_provisioning && data->phase2_success) {
		FUNC6(data->session_id);
		data->session_id = FUNC4(
			sm, &data->ssl, EAP_TYPE_FAST, &data->id_len);
		if (data->session_id) {
			FUNC10(MSG_DEBUG, "EAP-FAST: Derived Session-Id",
				    data->session_id, data->id_len);
		} else {
			FUNC11(MSG_ERROR, "EAP-FAST: Failed to derive "
				   "Session-Id");
			FUNC13(resp);
			return NULL;
		}
	}

	pos = FUNC14(resp, sizeof(struct eap_tlv_crypto_binding_tlv));
	FUNC3((struct eap_tlv_crypto_binding_tlv *)
				      pos, _bind, cmk);

	return resp;
}