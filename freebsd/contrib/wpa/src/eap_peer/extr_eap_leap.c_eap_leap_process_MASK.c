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
struct eap_sm {void* leap_done; } ;
struct eap_method_ret {void* ignore; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* allowNotifications; } ;
struct eap_hdr {int code; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
#define  EAP_CODE_REQUEST 130 
#define  EAP_CODE_RESPONSE 129 
#define  EAP_CODE_SUCCESS 128 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ; 
 struct wpabuf* FUNC4 (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct eap_hdr* FUNC7 (struct wpabuf const*) ; 
 int FUNC8 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_sm *sm, void *priv,
					struct eap_method_ret *ret,
					const struct wpabuf *reqData)
{
	const struct eap_hdr *eap;
	size_t password_len;
	const u8 *password;

	password = FUNC1(sm, &password_len);
	if (password == NULL) {
		FUNC6(MSG_INFO, "EAP-LEAP: Password not configured");
		FUNC5(sm);
		ret->ignore = TRUE;
		return NULL;
	}

	/*
	 * LEAP needs to be able to handle EAP-Success frame which does not
	 * include Type field. Consequently, eap_hdr_validate() cannot be used
	 * here. This validation will be done separately for EAP-Request and
	 * EAP-Response frames.
	 */
	eap = FUNC7(reqData);
	if (FUNC8(reqData) < sizeof(*eap) ||
	    FUNC0(eap->length) > FUNC8(reqData)) {
		FUNC6(MSG_INFO, "EAP-LEAP: Invalid frame");
		ret->ignore = TRUE;
		return NULL;
	}

	ret->ignore = FALSE;
	ret->allowNotifications = TRUE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;

	sm->leap_done = FALSE;

	switch (eap->code) {
	case EAP_CODE_REQUEST:
		return FUNC2(sm, priv, ret, reqData);
	case EAP_CODE_SUCCESS:
		return FUNC4(sm, priv, ret, reqData);
	case EAP_CODE_RESPONSE:
		return FUNC3(sm, priv, ret, reqData);
	default:
		FUNC6(MSG_INFO, "EAP-LEAP: Unexpected EAP code (%d) - "
			   "ignored", eap->code);
		ret->ignore = TRUE;
		return NULL;
	}
}