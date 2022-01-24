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
struct eap_vendor_test_data {scalar_t__ state; scalar_t__ first_try; scalar_t__ test_pending_req; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* allowNotifications; void* ignore; } ;

/* Variables and functions */
 scalar_t__ CONFIRM ; 
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_VENDOR_ID ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE ; 
 void* FALSE ; 
 scalar_t__ INIT ; 
 int /*<<< orphan*/  METHOD_CONT ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf const*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eap_vendor_ready ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm, void *priv,
					       struct eap_method_ret *ret,
					       const struct wpabuf *reqData)
{
	struct eap_vendor_test_data *data = priv;
	struct wpabuf *resp;
	const u8 *pos;
	size_t len;

	pos = FUNC1(EAP_VENDOR_ID, EAP_VENDOR_TYPE, reqData, &len);
	if (pos == NULL || len < 1) {
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->state == INIT && *pos != 1) {
		FUNC4(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
			   "%d in INIT state", *pos);
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->state == CONFIRM && *pos != 3) {
		FUNC4(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
			   "%d in CONFIRM state", *pos);
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->state == SUCCESS) {
		FUNC4(MSG_DEBUG, "EAP-VENDOR-TEST: Unexpected message "
			   "in SUCCESS state");
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->state == CONFIRM) {
		if (data->test_pending_req && data->first_try) {
			data->first_try = 0;
			FUNC4(MSG_DEBUG, "EAP-VENDOR-TEST: Testing "
				   "pending request");
			ret->ignore = TRUE;
			FUNC3(1, 0, eap_vendor_ready, sm,
					       NULL);
			return NULL;
		}
	}

	ret->ignore = FALSE;

	FUNC4(MSG_DEBUG, "EAP-VENDOR-TEST: Generating Response");
	ret->allowNotifications = TRUE;

	resp = FUNC2(EAP_VENDOR_ID, EAP_VENDOR_TYPE, 1,
			     EAP_CODE_RESPONSE, FUNC0(reqData));
	if (resp == NULL)
		return NULL;

	if (data->state == INIT) {
		FUNC5(resp, 2);
		data->state = CONFIRM;
		ret->methodState = METHOD_CONT;
		ret->decision = DECISION_FAIL;
	} else {
		FUNC5(resp, 4);
		data->state = SUCCESS;
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_UNCOND_SUCC;
	}

	return resp;
}