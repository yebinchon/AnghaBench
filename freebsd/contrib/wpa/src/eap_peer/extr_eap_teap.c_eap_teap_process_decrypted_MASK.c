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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_teap_tlv_parse {scalar_t__ result; scalar_t__ iresult; scalar_t__ crypto_binding; scalar_t__ pac; int /*<<< orphan*/  pac_len; int /*<<< orphan*/  crypto_binding_len; int /*<<< orphan*/  eap_payload_tlv_len; scalar_t__ eap_payload_tlv; int /*<<< orphan*/  basic_auth_req_len; scalar_t__ basic_auth_req; } ;
struct eap_teap_data {int result_success_done; int /*<<< orphan*/  teap_version; int /*<<< orphan*/  ssl; scalar_t__ provisioning; void* on_tx_completion; scalar_t__ phase2_success; TYPE_1__* phase2_method; int /*<<< orphan*/  tls_cs; int /*<<< orphan*/  anon_provisioning; int /*<<< orphan*/  current_pac; scalar_t__ session_ticket_used; scalar_t__ inner_method_done; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* decision; void* methodState; } ;
typedef  enum teap_error_codes { ____Placeholder_teap_error_codes } teap_error_codes ;
struct TYPE_2__ {scalar_t__ vendor; int /*<<< orphan*/  method; } ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_TYPE_TEAP ; 
 void* METHOD_DONE ; 
 void* METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int TEAP_ERROR_TUNNEL_COMPROMISE_ERROR ; 
 int TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED ; 
 scalar_t__ TEAP_STATUS_FAILURE ; 
 scalar_t__ TEAP_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct eap_teap_data*) ; 
 struct wpabuf* FUNC4 () ; 
 scalar_t__ FUNC5 (struct wpabuf*,struct eap_teap_tlv_parse*,struct wpabuf**) ; 
 struct wpabuf* FUNC6 (struct eap_sm*,struct eap_teap_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 (struct eap_sm*,struct eap_teap_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC8 (struct eap_sm*,struct eap_teap_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC9 (struct eap_sm*,struct eap_teap_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC10 (int) ; 
 struct wpabuf* FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC14 (int) ; 
 struct wpabuf* FUNC15 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC17(struct eap_sm *sm,
				      struct eap_teap_data *data,
				      struct eap_method_ret *ret,
				      u8 identifier,
				      struct wpabuf *decrypted,
				      struct wpabuf **out_data)
{
	struct wpabuf *resp = NULL, *tmp;
	struct eap_teap_tlv_parse tlv;
	int failed = 0;
	enum teap_error_codes error = 0;

	if (FUNC5(decrypted, &tlv, &resp) < 0) {
		/* Parsing failed - no response available */
		return 0;
	}

	if (resp) {
		/* Parsing rejected the message - send out an error response */
		goto send_resp;
	}

	if (tlv.result == TEAP_STATUS_FAILURE) {
		/* Server indicated failure - respond similarly per
		 * RFC 7170, 3.6.3. This authentication exchange cannot succeed
		 * and will be terminated with a cleartext EAP Failure. */
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: Server rejected authentication");
		resp = FUNC11(TEAP_STATUS_FAILURE, 0);
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		goto send_resp;
	}

	if ((tlv.iresult == TEAP_STATUS_SUCCESS ||
	     (!data->result_success_done &&
	      tlv.result == TEAP_STATUS_SUCCESS)) &&
	    !tlv.crypto_binding) {
		/* Result TLV or Intermediate-Result TLV indicating success,
		 * but no Crypto-Binding TLV */
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: Result TLV or Intermediate-Result TLV indicating success, but no Crypto-Binding TLV");
		failed = 1;
		error = TEAP_ERROR_TUNNEL_COMPROMISE_ERROR;
		goto done;
	}

	if (tlv.iresult != TEAP_STATUS_SUCCESS &&
	    tlv.iresult != TEAP_STATUS_FAILURE &&
	    data->inner_method_done) {
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: Inner EAP method exchange completed, but no Intermediate-Result TLV included");
		failed = 1;
		error = TEAP_ERROR_TUNNEL_COMPROMISE_ERROR;
		goto done;
	}

	if (tlv.basic_auth_req) {
		tmp = FUNC6(sm, data,
						      tlv.basic_auth_req,
						      tlv.basic_auth_req_len);
		if (!tmp)
			failed = 1;
		resp = FUNC15(resp, tmp);
	} else if (tlv.eap_payload_tlv) {
		tmp = FUNC8(sm, data, ret,
						       tlv.eap_payload_tlv,
						       tlv.eap_payload_tlv_len);
		if (!tmp)
			failed = 1;
		resp = FUNC15(resp, tmp);

		if (tlv.iresult == TEAP_STATUS_SUCCESS ||
		    tlv.iresult == TEAP_STATUS_FAILURE) {
			tmp = FUNC11(failed ?
						  TEAP_STATUS_FAILURE :
						  TEAP_STATUS_SUCCESS, 1);
			resp = FUNC15(resp, tmp);
			if (tlv.iresult == TEAP_STATUS_FAILURE)
				failed = 1;
		}
	}

	if (tlv.crypto_binding) {
		if (tlv.iresult != TEAP_STATUS_SUCCESS &&
		    tlv.result != TEAP_STATUS_SUCCESS) {
			FUNC13(MSG_DEBUG,
				   "EAP-TEAP: Unexpected Crypto-Binding TLV without Result TLV or Intermediate-Result TLV indicating success");
			failed = 1;
			error = TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED;
			goto done;
		}

		tmp = FUNC7(sm, data, ret,
						      tlv.crypto_binding,
						      tlv.crypto_binding_len);
		if (!tmp) {
			failed = 1;
			error = TEAP_ERROR_TUNNEL_COMPROMISE_ERROR;
		} else {
			resp = FUNC15(resp, tmp);
			if (tlv.result == TEAP_STATUS_SUCCESS && !failed)
				data->result_success_done = 1;
			if (tlv.iresult == TEAP_STATUS_SUCCESS && !failed)
				data->inner_method_done = 0;
		}
	}

	if (data->result_success_done && data->session_ticket_used &&
	    FUNC3(data) == 0) {
		/* Assume the server might accept authentication without going
		 * through inner authentication. */
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: PAC used - server may decide to skip inner authentication");
		ret->methodState = METHOD_MAY_CONT;
		ret->decision = DECISION_COND_SUCC;
	}

	if (tlv.pac) {
		if (tlv.result == TEAP_STATUS_SUCCESS) {
			tmp = FUNC9(sm, data, ret,
						   tlv.pac, tlv.pac_len);
			resp = FUNC15(resp, tmp);
		} else {
			FUNC13(MSG_DEBUG,
				   "EAP-TEAP: PAC TLV without Result TLV acknowledging success");
			failed = 1;
			error = TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED;
		}
	}

	if (!data->current_pac && data->provisioning && !failed && !tlv.pac &&
	    tlv.crypto_binding &&
	    (!data->anon_provisioning ||
	     (data->phase2_success && data->phase2_method &&
	      data->phase2_method->vendor == 0 &&
	      FUNC1(data->tls_cs) &&
	      FUNC2(
		      data->phase2_method->method))) &&
	    (tlv.iresult == TEAP_STATUS_SUCCESS ||
	     tlv.result == TEAP_STATUS_SUCCESS)) {
		/*
		 * Need to request Tunnel PAC when using authenticated
		 * provisioning.
		 */
		FUNC13(MSG_DEBUG, "EAP-TEAP: Request Tunnel PAC");
		tmp = FUNC4();
		resp = FUNC15(resp, tmp);
	}

done:
	if (failed) {
		tmp = FUNC11(TEAP_STATUS_FAILURE, 0);
		resp = FUNC15(tmp, resp);

		if (error != 0) {
			tmp = FUNC10(error);
			resp = FUNC15(tmp, resp);
		}

		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
	} else if (tlv.result == TEAP_STATUS_SUCCESS) {
		tmp = FUNC11(TEAP_STATUS_SUCCESS, 0);
		resp = FUNC15(tmp, resp);
	}

	if (resp && tlv.result == TEAP_STATUS_SUCCESS && !failed &&
	    tlv.crypto_binding && data->phase2_success) {
		/* Successfully completed Phase 2 */
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: Authentication completed successfully");
		ret->methodState = METHOD_MAY_CONT;
		data->on_tx_completion = data->provisioning ?
			METHOD_MAY_CONT : METHOD_DONE;
		ret->decision = DECISION_UNCOND_SUCC;
	}

	if (!resp) {
		FUNC13(MSG_DEBUG,
			   "EAP-TEAP: No recognized TLVs - send empty response packet");
		resp = FUNC14(1);
	}

send_resp:
	if (!resp)
		return 0;

	FUNC12(MSG_DEBUG, "EAP-TEAP: Encrypting Phase 2 data", resp);
	if (FUNC0(sm, &data->ssl, EAP_TYPE_TEAP,
				 data->teap_version, identifier,
				 resp, out_data)) {
		FUNC13(MSG_INFO,
			   "EAP-TEAP: Failed to encrypt a Phase 2 frame");
	}
	FUNC16(resp);

	return 0;
}