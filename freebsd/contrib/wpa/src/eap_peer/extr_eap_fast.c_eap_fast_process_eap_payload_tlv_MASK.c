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
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  code; int /*<<< orphan*/  length; } ;
struct eap_fast_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ; 
 struct wpabuf* FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC4(
	struct eap_sm *sm, struct eap_fast_data *data,
	struct eap_method_ret *ret,
	u8 *eap_payload_tlv, size_t eap_payload_tlv_len)
{
	struct eap_hdr *hdr;
	struct wpabuf *resp = NULL;

	if (eap_payload_tlv_len < sizeof(*hdr)) {
		FUNC3(MSG_DEBUG, "EAP-FAST: too short EAP "
			   "Payload TLV (len=%lu)",
			   (unsigned long) eap_payload_tlv_len);
		return NULL;
	}

	hdr = (struct eap_hdr *) eap_payload_tlv;
	if (FUNC0(hdr->length) > eap_payload_tlv_len) {
		FUNC3(MSG_DEBUG, "EAP-FAST: EAP packet overflow in "
			   "EAP Payload TLV");
		return NULL;
	}

	if (hdr->code != EAP_CODE_REQUEST) {
		FUNC3(MSG_INFO, "EAP-FAST: Unexpected code=%d in "
			   "Phase 2 EAP header", hdr->code);
		return NULL;
	}

	if (FUNC1(sm, data, ret, hdr, &resp)) {
		FUNC3(MSG_INFO, "EAP-FAST: Phase2 Request processing "
			   "failed");
		return NULL;
	}

	return FUNC2(resp);
}