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
struct wpabuf {int dummy; } ;
struct ttls_parse_avp {int eap_len; int /*<<< orphan*/ * eapdata; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {long code; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  EAP_CODE_REQUEST 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct eap_sm *sm,
				       struct eap_ttls_data *data,
				       struct eap_method_ret *ret,
				       struct ttls_parse_avp *parse,
				       struct wpabuf **resp)
{
	struct eap_hdr *hdr;
	size_t len;

	if (parse->eapdata == NULL) {
		FUNC3(MSG_WARNING, "EAP-TTLS: No EAP Message in the "
			   "packet - dropped");
		return -1;
	}

	FUNC2(MSG_DEBUG, "EAP-TTLS: Phase 2 EAP",
		    parse->eapdata, parse->eap_len);
	hdr = (struct eap_hdr *) parse->eapdata;

	if (parse->eap_len < sizeof(*hdr)) {
		FUNC3(MSG_WARNING, "EAP-TTLS: Too short Phase 2 EAP "
			   "frame (len=%lu, expected %lu or more) - dropped",
			   (unsigned long) parse->eap_len,
			   (unsigned long) sizeof(*hdr));
		return -1;
	}
	len = FUNC0(hdr->length);
	if (len > parse->eap_len) {
		FUNC3(MSG_INFO, "EAP-TTLS: Length mismatch in Phase 2 "
			   "EAP frame (EAP hdr len=%lu, EAP data len in "
			   "AVP=%lu)",
			   (unsigned long) len,
			   (unsigned long) parse->eap_len);
		return -1;
	}
	FUNC3(MSG_DEBUG, "EAP-TTLS: received Phase 2: code=%d "
		   "identifier=%d length=%lu",
		   hdr->code, hdr->identifier, (unsigned long) len);
	switch (hdr->code) {
	case EAP_CODE_REQUEST:
		if (FUNC1(sm, data, ret, hdr, resp)) {
			FUNC3(MSG_INFO, "EAP-TTLS: Phase2 Request "
				   "processing failed");
			return -1;
		}
		break;
	default:
		FUNC3(MSG_INFO, "EAP-TTLS: Unexpected code=%d in "
			   "Phase 2 EAP header", hdr->code);
		return -1;
	}

	return 0;
}