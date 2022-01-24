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
struct eap_ttls_data {int /*<<< orphan*/  pending_phase2_req; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {void* decision; void* methodState; } ;
struct eap_hdr {int dummy; } ;

/* Variables and functions */
 void* DECISION_FAIL ; 
 void* METHOD_DONE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int FUNC1 (struct eap_sm*,struct eap_ttls_data*,struct wpabuf*,int /*<<< orphan*/ ,struct wpabuf**) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct eap_sm *sm,
					      struct eap_ttls_data *data,
					      struct eap_method_ret *ret,
					      u8 identifier,
					      struct wpabuf **out_data)
{
	int retval = 0;
	struct eap_hdr *hdr;
	struct wpabuf *resp;

	hdr = (struct eap_hdr *) FUNC2();
	if (hdr == NULL) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return -1;
	}

	resp = NULL;
	if (FUNC3(sm, data, ret, hdr, &resp)) {
		FUNC5(MSG_INFO, "EAP-TTLS: Phase2 Request "
			   "processing failed");
		retval = -1;
	} else {
		struct eap_peer_config *config = FUNC0(sm);
		if (resp == NULL &&
		    (config->pending_req_identity ||
		     config->pending_req_password ||
		     config->pending_req_otp ||
		     config->pending_req_new_password ||
		     config->pending_req_sim)) {
			/*
			 * Use empty buffer to force implicit request
			 * processing when EAP request is re-processed after
			 * user input.
			 */
			FUNC7(data->pending_phase2_req);
			data->pending_phase2_req = FUNC6(0);
		}

		retval = FUNC1(sm, data, resp, identifier,
						   out_data);
	}

	FUNC4(hdr);

	if (retval < 0) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
	}

	return retval;
}