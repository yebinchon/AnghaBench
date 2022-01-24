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
typedef  scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct eap_teap_tlv_parse {scalar_t__ result; int pac_len; scalar_t__ iresult; scalar_t__ request_action; int /*<<< orphan*/  eap_payload_tlv_len; scalar_t__ eap_payload_tlv; int /*<<< orphan*/  basic_auth_resp_len; scalar_t__ basic_auth_resp; scalar_t__ pac; int /*<<< orphan*/  crypto_binding_len; int /*<<< orphan*/  crypto_binding; scalar_t__ nak; } ;
struct eap_teap_data {scalar_t__ state; scalar_t__ final_result; scalar_t__ send_new_pac; scalar_t__ anon_provisioning; } ;
struct eap_sm {scalar_t__ eap_fast_prov; int eap_teap_auth; } ;

/* Variables and functions */
 scalar_t__ ANON_PROV ; 
 scalar_t__ AUTH_PROV ; 
 scalar_t__ BOTH_PROV ; 
 scalar_t__ CRYPTO_BINDING ; 
 scalar_t__ FAILURE ; 
 scalar_t__ FAILURE_SEND_RESULT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ PAC_TYPE_PAC_ACKNOWLEDGEMENT ; 
 int /*<<< orphan*/  PAC_TYPE_TUNNEL_PAC ; 
 scalar_t__ REQUEST_PAC ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ TEAP_REQUEST_ACTION_PROCESS_TLV ; 
 scalar_t__ TEAP_STATUS_FAILURE ; 
 scalar_t__ TEAP_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct eap_teap_tlv_parse*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_teap_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_teap_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_teap_data*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct eap_teap_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm,
					 struct eap_teap_data *data,
					 struct wpabuf *in_data)
{
	struct eap_teap_tlv_parse tlv;
	int check_crypto_binding = data->state == CRYPTO_BINDING;

	if (FUNC3(in_data, &tlv) < 0) {
		FUNC8(MSG_DEBUG,
			   "EAP-TEAP: Failed to parse received Phase 2 TLVs");
		return;
	}

	if (tlv.result == TEAP_STATUS_FAILURE) {
		FUNC8(MSG_DEBUG, "EAP-TEAP: Result TLV indicated failure");
		FUNC6(data, FAILURE);
		return;
	}

	if (tlv.nak) {
		FUNC8(MSG_DEBUG,
			   "EAP-TEAP: Peer NAK'ed Vendor-Id %u NAK-Type %u",
			   FUNC1(tlv.nak), FUNC0(tlv.nak + 4));
		FUNC6(data, FAILURE_SEND_RESULT);
		return;
	}

	if (data->state == REQUEST_PAC) {
		u16 type, len, res;

		if (!tlv.pac || tlv.pac_len < 6) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: No PAC Acknowledgement received");
			FUNC6(data, FAILURE);
			return;
		}

		type = FUNC0(tlv.pac);
		len = FUNC0(tlv.pac + 2);
		res = FUNC0(tlv.pac + 4);

		if (type != PAC_TYPE_PAC_ACKNOWLEDGEMENT || len != 2 ||
		    res != TEAP_STATUS_SUCCESS) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: PAC TLV did not contain acknowledgement");
			FUNC6(data, FAILURE);
			return;
		}

		FUNC8(MSG_DEBUG,
			   "EAP-TEAP: PAC-Acknowledgement received - PAC provisioning succeeded");
		FUNC6(data, SUCCESS);
		return;
	}

	if (check_crypto_binding) {
		if (!tlv.crypto_binding) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: No Crypto-Binding TLV received");
			FUNC6(data, FAILURE);
			return;
		}

		if (data->final_result &&
		    tlv.result != TEAP_STATUS_SUCCESS) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Crypto-Binding TLV without Success Result");
			FUNC6(data, FAILURE);
			return;
		}

		if (!data->final_result &&
		    tlv.iresult != TEAP_STATUS_SUCCESS) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Crypto-Binding TLV without intermediate Success Result");
			FUNC6(data, FAILURE);
			return;
		}

		if (FUNC7(data, tlv.crypto_binding,
						     tlv.crypto_binding_len)) {
			FUNC6(data, FAILURE);
			return;
		}

		FUNC8(MSG_DEBUG,
			   "EAP-TEAP: Valid Crypto-Binding TLV received");
		if (data->final_result) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Authentication completed successfully");
		}

		if (data->anon_provisioning &&
		    sm->eap_fast_prov != ANON_PROV &&
		    sm->eap_fast_prov != BOTH_PROV) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Client is trying to use unauthenticated provisioning which is disabled");
			FUNC6(data, FAILURE);
			return;
		}

		if (sm->eap_fast_prov != AUTH_PROV &&
		    sm->eap_fast_prov != BOTH_PROV &&
		    tlv.request_action == TEAP_REQUEST_ACTION_PROCESS_TLV &&
		    FUNC2(tlv.pac, tlv.pac_len,
				      PAC_TYPE_TUNNEL_PAC)) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Client is trying to use authenticated provisioning which is disabled");
			FUNC6(data, FAILURE);
			return;
		}

		if (data->anon_provisioning ||
		    (tlv.request_action == TEAP_REQUEST_ACTION_PROCESS_TLV &&
		     FUNC2(tlv.pac, tlv.pac_len,
				       PAC_TYPE_TUNNEL_PAC))) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Requested a new Tunnel PAC");
			FUNC6(data, REQUEST_PAC);
		} else if (data->send_new_pac) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Server triggered re-keying of Tunnel PAC");
			FUNC6(data, REQUEST_PAC);
		} else if (data->final_result)
			FUNC6(data, SUCCESS);
	}

	if (tlv.basic_auth_resp) {
		if (sm->eap_teap_auth != 1) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Unexpected Basic-Password-Auth-Resp when trying to use inner EAP");
			FUNC6(data, FAILURE);
			return;
		}
		FUNC4(sm, data, tlv.basic_auth_resp,
						 tlv.basic_auth_resp_len);
	}

	if (tlv.eap_payload_tlv) {
		if (sm->eap_teap_auth == 1) {
			FUNC8(MSG_DEBUG,
				   "EAP-TEAP: Unexpected EAP Payload TLV when trying to use Basic-Password-Auth");
			FUNC6(data, FAILURE);
			return;
		}
		FUNC5(sm, data, tlv.eap_payload_tlv,
					    tlv.eap_payload_tlv_len);
	}
}