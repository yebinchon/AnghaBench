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
struct eap_sm {int expected_failure; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; void* methodState; } ;
struct eap_fast_tlv_parse {scalar_t__ result; scalar_t__ iresult; scalar_t__ crypto_binding; scalar_t__ pac; int /*<<< orphan*/  pac_len; int /*<<< orphan*/  eap_payload_tlv_len; scalar_t__ eap_payload_tlv; int /*<<< orphan*/  crypto_binding_len; } ;
struct eap_fast_data {scalar_t__ provisioning; scalar_t__ anon_provisioning; scalar_t__ phase2_success; int /*<<< orphan*/ * current_pac; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  DECISION_UNCOND_SUCC ; 
 scalar_t__ EAP_TLV_RESULT_FAILURE ; 
 scalar_t__ EAP_TLV_RESULT_SUCCESS ; 
 void* METHOD_DONE ; 
 void* METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct eap_sm*,struct eap_fast_data*,struct wpabuf*,int /*<<< orphan*/ ,struct wpabuf**) ; 
 struct wpabuf* FUNC1 () ; 
 scalar_t__ FUNC2 (struct wpabuf*,struct eap_fast_tlv_parse*,struct wpabuf**) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC8 (int) ; 
 struct wpabuf* FUNC9 (struct wpabuf*,struct wpabuf*) ; 

__attribute__((used)) static int FUNC10(struct eap_sm *sm,
				      struct eap_fast_data *data,
				      struct eap_method_ret *ret,
				      u8 identifier,
				      struct wpabuf *decrypted,
				      struct wpabuf **out_data)
{
	struct wpabuf *resp = NULL, *tmp;
	struct eap_fast_tlv_parse tlv;
	int failed = 0;

	if (FUNC2(decrypted, &tlv, &resp) < 0)
		return 0;
	if (resp)
		return FUNC0(sm, data, resp,
						 identifier, out_data);

	if (tlv.result == EAP_TLV_RESULT_FAILURE) {
		resp = FUNC6(EAP_TLV_RESULT_FAILURE, 0);
		return FUNC0(sm, data, resp,
						 identifier, out_data);
	}

	if (tlv.iresult == EAP_TLV_RESULT_FAILURE) {
		resp = FUNC6(EAP_TLV_RESULT_FAILURE, 1);
		return FUNC0(sm, data, resp,
						 identifier, out_data);
	}

	if (tlv.crypto_binding) {
		tmp = FUNC3(sm, data, ret,
						      tlv.crypto_binding,
						      tlv.crypto_binding_len);
		if (tmp == NULL)
			failed = 1;
		else
			resp = FUNC9(resp, tmp);
	}

	if (tlv.iresult == EAP_TLV_RESULT_SUCCESS) {
		tmp = FUNC6(failed ? EAP_TLV_RESULT_FAILURE :
					  EAP_TLV_RESULT_SUCCESS, 1);
		resp = FUNC9(resp, tmp);
	}

	if (tlv.eap_payload_tlv) {
		tmp = FUNC4(
			sm, data, ret, tlv.eap_payload_tlv,
			tlv.eap_payload_tlv_len);
		resp = FUNC9(resp, tmp);
	}

	if (tlv.pac && tlv.result != EAP_TLV_RESULT_SUCCESS) {
		FUNC7(MSG_DEBUG, "EAP-FAST: PAC TLV without Result TLV "
			   "acknowledging success");
		failed = 1;
	} else if (tlv.pac && tlv.result == EAP_TLV_RESULT_SUCCESS) {
		tmp = FUNC5(sm, data, ret, tlv.pac,
					   tlv.pac_len);
		resp = FUNC9(resp, tmp);
	}

	if (data->current_pac == NULL && data->provisioning &&
	    !data->anon_provisioning && !tlv.pac &&
	    (tlv.iresult == EAP_TLV_RESULT_SUCCESS ||
	     tlv.result == EAP_TLV_RESULT_SUCCESS)) {
		/*
		 * Need to request Tunnel PAC when using authenticated
		 * provisioning.
		 */
		FUNC7(MSG_DEBUG, "EAP-FAST: Request Tunnel PAC");
		tmp = FUNC1();
		resp = FUNC9(resp, tmp);
	}

	if (tlv.result == EAP_TLV_RESULT_SUCCESS && !failed) {
		tmp = FUNC6(EAP_TLV_RESULT_SUCCESS, 0);
		resp = FUNC9(tmp, resp);
	} else if (failed) {
		tmp = FUNC6(EAP_TLV_RESULT_FAILURE, 0);
		resp = FUNC9(tmp, resp);
	}

	if (resp && tlv.result == EAP_TLV_RESULT_SUCCESS && !failed &&
	    tlv.crypto_binding && data->phase2_success) {
		if (data->anon_provisioning) {
			FUNC7(MSG_DEBUG, "EAP-FAST: Unauthenticated "
				   "provisioning completed successfully.");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			sm->expected_failure = 1;
		} else {
			FUNC7(MSG_DEBUG, "EAP-FAST: Authentication "
				   "completed successfully.");
			if (data->provisioning)
				ret->methodState = METHOD_MAY_CONT;
			else
				ret->methodState = METHOD_DONE;
			ret->decision = DECISION_UNCOND_SUCC;
		}
	}

	if (resp == NULL) {
		FUNC7(MSG_DEBUG, "EAP-FAST: No recognized TLVs - send "
			   "empty response packet");
		resp = FUNC8(1);
	}

	return FUNC0(sm, data, resp, identifier,
					 out_data);
}