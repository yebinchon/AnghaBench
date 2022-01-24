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
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* ignore; int /*<<< orphan*/  decision; } ;
struct eap_eke_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
#define  EAP_EKE_COMMIT 131 
#define  EAP_EKE_CONFIRM 130 
#define  EAP_EKE_FAILURE 129 
#define  EAP_EKE_ID 128 
 int /*<<< orphan*/  EAP_TYPE_EKE ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FALSE ; 
 scalar_t__ METHOD_DONE ; 
 scalar_t__ METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* TRUE ; 
 struct wpabuf* FUNC0 (struct eap_sm*,struct eap_eke_data*,struct eap_method_ret*,struct wpabuf const*,int const*,int) ; 
 struct wpabuf* FUNC1 (struct eap_eke_data*,struct eap_method_ret*,struct wpabuf const*,int const*,int) ; 
 struct wpabuf* FUNC2 (struct eap_eke_data*,struct eap_method_ret*,struct wpabuf const*,int const*,int) ; 
 struct wpabuf* FUNC3 (struct eap_eke_data*,struct eap_method_ret*,struct wpabuf const*,int const*,int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC7(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_eke_data *data = priv;
	struct wpabuf *resp;
	const u8 *pos, *end;
	size_t len;
	u8 eke_exch;

	pos = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_EKE, reqData, &len);
	if (pos == NULL || len < 1) {
		ret->ignore = TRUE;
		return NULL;
	}

	end = pos + len;
	eke_exch = *pos++;

	FUNC6(MSG_DEBUG, "EAP-EKE: Received frame: exch %d", eke_exch);
	FUNC5(MSG_DEBUG, "EAP-EKE: Received Data", pos, end - pos);

	ret->ignore = FALSE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = TRUE;

	switch (eke_exch) {
	case EAP_EKE_ID:
		resp = FUNC3(data, ret, reqData, pos, end - pos);
		break;
	case EAP_EKE_COMMIT:
		resp = FUNC0(sm, data, ret, reqData,
					      pos, end - pos);
		break;
	case EAP_EKE_CONFIRM:
		resp = FUNC1(data, ret, reqData,
					       pos, end - pos);
		break;
	case EAP_EKE_FAILURE:
		resp = FUNC2(data, ret, reqData,
					       pos, end - pos);
		break;
	default:
		FUNC6(MSG_DEBUG, "EAP-EKE: Ignoring message with unknown EKE-Exch %d", eke_exch);
		ret->ignore = TRUE;
		return NULL;
	}

	if (ret->methodState == METHOD_DONE)
		ret->allowNotifications = FALSE;

	return resp;
}