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
typedef  long u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  EAP_TYPE_IDENTITY 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  RADIUS_ATTR_EAP_MESSAGE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct eap_peer_config* FUNC1 (struct eap_sm*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wpabuf**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,size_t,long,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,long) ; 

__attribute__((used)) static int FUNC7(struct eap_sm *sm,
				       struct eap_ttls_data *data,
				       struct eap_method_ret *ret,
				       struct eap_hdr *hdr,
				       struct wpabuf **resp)
{
	size_t len = FUNC0(hdr->length);
	u8 *pos;
	struct eap_peer_config *config = FUNC1(sm);

	if (len <= sizeof(struct eap_hdr)) {
		FUNC6(MSG_INFO, "EAP-TTLS: too short "
			   "Phase 2 request (len=%lu)", (unsigned long) len);
		return -1;
	}
	pos = (u8 *) (hdr + 1);
	FUNC6(MSG_DEBUG, "EAP-TTLS: Phase 2 EAP Request: type=%d", *pos);
	switch (*pos) {
	case EAP_TYPE_IDENTITY:
		*resp = FUNC2(sm, hdr->identifier, 1);
		break;
	default:
		if (FUNC4(sm, data, ret, hdr, len,
						       *pos, resp) < 0)
			return -1;
		break;
	}

	if (*resp == NULL &&
	    (config->pending_req_identity || config->pending_req_password ||
	     config->pending_req_otp || config->pending_req_sim)) {
		return 0;
	}

	if (*resp == NULL)
		return -1;

	FUNC5(MSG_DEBUG, "EAP-TTLS: AVP encapsulate EAP Response",
			*resp);
	return FUNC3(resp, RADIUS_ATTR_EAP_MESSAGE, 1);
}