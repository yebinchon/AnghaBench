#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {unsigned long method; scalar_t__ vendor; } ;
struct eap_teap_data {int inner_method_done; int phase2_success; int /*<<< orphan*/  pending_phase2_req; int /*<<< orphan*/ * phase2_priv; TYPE_2__* phase2_method; int /*<<< orphan*/  num_phase2_types; int /*<<< orphan*/  phase2_types; TYPE_1__ phase2_type; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {scalar_t__ methodState; scalar_t__ decision; } ;
struct eap_hdr {int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  iret ;
struct TYPE_4__ {struct wpabuf* (* process ) (struct eap_sm*,int /*<<< orphan*/ *,struct eap_method_ret*,struct wpabuf*) ;int /*<<< orphan*/  (* deinit ) (struct eap_sm*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ DECISION_COND_SUCC ; 
 scalar_t__ DECISION_FAIL ; 
 scalar_t__ DECISION_UNCOND_SUCC ; 
 unsigned long EAP_TYPE_IDENTITY ; 
 unsigned long EAP_TYPE_NONE ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 scalar_t__ METHOD_DONE ; 
 scalar_t__ METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct eap_peer_config* FUNC1 (struct eap_sm*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_hdr*,struct wpabuf**) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct eap_sm*,struct eap_teap_data*) ; 
 scalar_t__ FUNC5 (struct eap_teap_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_method_ret*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sm*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC8 (struct eap_sm*,int /*<<< orphan*/ *,struct eap_method_ret*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct eap_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,struct eap_hdr*,size_t) ; 

__attribute__((used)) static int FUNC13(struct eap_sm *sm,
				   struct eap_teap_data *data,
				   struct eap_method_ret *ret,
				   struct eap_hdr *hdr,
				   struct wpabuf **resp)
{
	size_t len = FUNC0(hdr->length);
	u8 *pos;
	struct eap_method_ret iret;
	struct eap_peer_config *config = FUNC1(sm);
	struct wpabuf msg;

	if (len <= sizeof(struct eap_hdr)) {
		FUNC9(MSG_INFO,
			   "EAP-TEAP: too short Phase 2 request (len=%lu)",
			   (unsigned long) len);
		return -1;
	}
	pos = (u8 *) (hdr + 1);
	FUNC9(MSG_DEBUG, "EAP-TEAP: Phase 2 Request: type=%d", *pos);
	if (*pos == EAP_TYPE_IDENTITY) {
		*resp = FUNC3(sm, hdr->identifier, 1);
		return 0;
	}

	if (data->phase2_priv && data->phase2_method &&
	    *pos != data->phase2_type.method) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: Phase 2 EAP sequence - deinitialize previous method");
		data->phase2_method->deinit(sm, data->phase2_priv);
		data->phase2_method = NULL;
		data->phase2_priv = NULL;
		data->phase2_type.vendor = EAP_VENDOR_IETF;
		data->phase2_type.method = EAP_TYPE_NONE;
	}

	if (data->phase2_type.vendor == EAP_VENDOR_IETF &&
	    data->phase2_type.method == EAP_TYPE_NONE &&
	    FUNC5(data, *pos) < 0) {
		if (FUNC2(data->phase2_types,
					    data->num_phase2_types,
					    hdr, resp))
			return -1;
		return 0;
	}

	if ((!data->phase2_priv && FUNC4(sm, data) < 0) ||
	    !data->phase2_method) {
		FUNC9(MSG_INFO,
			   "EAP-TEAP: Failed to initialize Phase 2 EAP method %d",
			   *pos);
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return -1;
	}

	FUNC6(&iret, 0, sizeof(iret));
	FUNC12(&msg, hdr, len);
	*resp = data->phase2_method->process(sm, data->phase2_priv, &iret,
					     &msg);
	if (iret.methodState == METHOD_DONE)
		data->inner_method_done = 1;
	if (!(*resp) ||
	    (iret.methodState == METHOD_DONE &&
	     iret.decision == DECISION_FAIL)) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
	} else if ((iret.methodState == METHOD_DONE ||
		    iret.methodState == METHOD_MAY_CONT) &&
		   (iret.decision == DECISION_UNCOND_SUCC ||
		    iret.decision == DECISION_COND_SUCC)) {
		data->phase2_success = 1;
	}

	if (!(*resp) && config &&
	    (config->pending_req_identity || config->pending_req_password ||
	     config->pending_req_otp || config->pending_req_new_password ||
	     config->pending_req_sim)) {
		FUNC11(data->pending_phase2_req);
		data->pending_phase2_req = FUNC10(hdr, len);
	} else if (!(*resp))
		return -1;

	return 0;
}