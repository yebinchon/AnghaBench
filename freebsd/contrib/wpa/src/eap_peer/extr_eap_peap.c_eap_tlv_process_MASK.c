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
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ crypto_binding; } ;
struct eap_method_ret {int /*<<< orphan*/  methodState; void* decision; } ;

/* Variables and functions */
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
#define  EAP_TLV_CRYPTO_BINDING_TLV 129 
 int EAP_TLV_RESULT_FAILURE ; 
 int EAP_TLV_RESULT_SUCCESS ; 
#define  EAP_TLV_RESULT_TLV 128 
 int /*<<< orphan*/  EAP_TYPE_TLV ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ NO_BINDING ; 
 scalar_t__ REQUIRE_BINDING ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf const*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct wpabuf* FUNC4 (struct eap_sm*,struct eap_peap_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct eap_sm*,struct eap_peap_data*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(struct eap_sm *sm, struct eap_peap_data *data,
			   struct eap_method_ret *ret,
			   const struct wpabuf *req, struct wpabuf **resp,
			   int force_failure)
{
	size_t left, tlv_len;
	const u8 *pos;
	const u8 *result_tlv = NULL, *crypto_tlv = NULL;
	size_t result_tlv_len = 0, crypto_tlv_len = 0;
	int tlv_type, mandatory;

	/* Parse TLVs */
	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_TLV, req, &left);
	if (pos == NULL)
		return -1;
	FUNC6(MSG_DEBUG, "EAP-TLV: Received TLVs", pos, left);
	while (left >= 4) {
		mandatory = !!(pos[0] & 0x80);
		tlv_type = FUNC0(pos) & 0x3fff;
		pos += 2;
		tlv_len = FUNC0(pos);
		pos += 2;
		left -= 4;
		if (tlv_len > left) {
			FUNC7(MSG_DEBUG, "EAP-TLV: TLV underrun "
				   "(tlv_len=%lu left=%lu)",
				   (unsigned long) tlv_len,
				   (unsigned long) left);
			return -1;
		}
		switch (tlv_type) {
		case EAP_TLV_RESULT_TLV:
			result_tlv = pos;
			result_tlv_len = tlv_len;
			break;
		case EAP_TLV_CRYPTO_BINDING_TLV:
			crypto_tlv = pos;
			crypto_tlv_len = tlv_len;
			break;
		default:
			FUNC7(MSG_DEBUG, "EAP-TLV: Unsupported TLV Type "
				   "%d%s", tlv_type,
				   mandatory ? " (mandatory)" : "");
			if (mandatory) {
				/* NAK TLV and ignore all TLVs in this packet.
				 */
				*resp = FUNC3(FUNC1(req),
							  tlv_type);
				return *resp == NULL ? -1 : 0;
			}
			/* Ignore this TLV, but process other TLVs */
			break;
		}

		pos += tlv_len;
		left -= tlv_len;
	}
	if (left) {
		FUNC7(MSG_DEBUG, "EAP-TLV: Last TLV too short in "
			   "Request (left=%lu)", (unsigned long) left);
		return -1;
	}

	/* Process supported TLVs */
	if (crypto_tlv && data->crypto_binding != NO_BINDING) {
		FUNC6(MSG_DEBUG, "EAP-PEAP: Cryptobinding TLV",
			    crypto_tlv, crypto_tlv_len);
		if (FUNC5(sm, data, crypto_tlv - 4,
						   crypto_tlv_len + 4) < 0) {
			if (result_tlv == NULL)
				return -1;
			force_failure = 1;
			crypto_tlv = NULL; /* do not include Cryptobinding TLV
					    * in response, if the received
					    * cryptobinding was invalid. */
		}
	} else if (!crypto_tlv && data->crypto_binding == REQUIRE_BINDING) {
		FUNC7(MSG_DEBUG, "EAP-PEAP: No cryptobinding TLV");
		return -1;
	}

	if (result_tlv) {
		int status, resp_status;
		FUNC6(MSG_DEBUG, "EAP-TLV: Result TLV",
			    result_tlv, result_tlv_len);
		if (result_tlv_len < 2) {
			FUNC7(MSG_INFO, "EAP-TLV: Too short Result TLV "
				   "(len=%lu)",
				   (unsigned long) result_tlv_len);
			return -1;
		}
		status = FUNC0(result_tlv);
		if (status == EAP_TLV_RESULT_SUCCESS) {
			FUNC7(MSG_INFO, "EAP-TLV: TLV Result - Success "
				   "- EAP-TLV/Phase2 Completed");
			if (force_failure) {
				FUNC7(MSG_INFO, "EAP-TLV: Earlier failure"
					   " - force failed Phase 2");
				resp_status = EAP_TLV_RESULT_FAILURE;
				ret->decision = DECISION_FAIL;
			} else {
				resp_status = EAP_TLV_RESULT_SUCCESS;
				ret->decision = DECISION_UNCOND_SUCC;
			}
		} else if (status == EAP_TLV_RESULT_FAILURE) {
			FUNC7(MSG_INFO, "EAP-TLV: TLV Result - Failure");
			resp_status = EAP_TLV_RESULT_FAILURE;
			ret->decision = DECISION_FAIL;
		} else {
			FUNC7(MSG_INFO, "EAP-TLV: Unknown TLV Result "
				   "Status %d", status);
			resp_status = EAP_TLV_RESULT_FAILURE;
			ret->decision = DECISION_FAIL;
		}
		ret->methodState = METHOD_DONE;

		*resp = FUNC4(sm, data, crypto_tlv != NULL,
					     FUNC1(req), resp_status);
	}

	return 0;
}