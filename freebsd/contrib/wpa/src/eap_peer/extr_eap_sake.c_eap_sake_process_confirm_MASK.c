#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  struct wpabuf const wpabuf ;
struct eap_sm {int dummy; } ;
struct eap_sake_parse_attr {int /*<<< orphan*/ * mic_s; } ;
struct TYPE_2__ {int /*<<< orphan*/  auth; } ;
struct eap_sake_data {scalar_t__ state; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; int /*<<< orphan*/  serverid_len; int /*<<< orphan*/  serverid; int /*<<< orphan*/  rand_p; int /*<<< orphan*/  rand_s; TYPE_1__ tek; } ;
struct eap_method_ret {void* allowNotifications; void* decision; void* methodState; int /*<<< orphan*/  ignore; } ;

/* Variables and functions */
 scalar_t__ CONFIRM ; 
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
 int EAP_SAKE_AT_MIC_P ; 
 int EAP_SAKE_MIC_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_SUBTYPE_AUTH_REJECT ; 
 int /*<<< orphan*/  EAP_SAKE_SUBTYPE_CONFIRM ; 
 int /*<<< orphan*/  FAILURE ; 
 void* FALSE ; 
 void* METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 struct wpabuf const* FUNC0 (struct eap_sake_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,size_t,struct eap_sake_parse_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sake_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC9 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC11(struct eap_sm *sm,
						struct eap_sake_data *data,
						struct eap_method_ret *ret,
						u8 id,
						const struct wpabuf *reqData,
						const u8 *payload,
						size_t payload_len)
{
	struct eap_sake_parse_attr attr;
	u8 mic_s[EAP_SAKE_MIC_LEN];
	struct wpabuf *resp;
	u8 *rpos;

	if (data->state != CONFIRM) {
		ret->ignore = TRUE;
		return NULL;
	}

	FUNC5(MSG_DEBUG, "EAP-SAKE: Received Request/Confirm");

	if (FUNC2(payload, payload_len, &attr))
		return NULL;

	if (!attr.mic_s) {
		FUNC5(MSG_INFO, "EAP-SAKE: Request/Confirm did not "
			   "include AT_MIC_S");
		return NULL;
	}

	if (FUNC1(data->tek.auth, data->rand_s, data->rand_p,
				 data->serverid, data->serverid_len,
				 data->peerid, data->peerid_len, 0,
				 FUNC7(reqData), FUNC8(reqData),
				 attr.mic_s, mic_s)) {
		FUNC5(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
		FUNC3(data, FAILURE);
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		ret->allowNotifications = FALSE;
		FUNC5(MSG_DEBUG, "EAP-SAKE: Sending Response/Auth-Reject");
		return FUNC0(data, id, 0,
					  EAP_SAKE_SUBTYPE_AUTH_REJECT);
	}
	if (FUNC4(attr.mic_s, mic_s, EAP_SAKE_MIC_LEN) != 0) {
		FUNC5(MSG_INFO, "EAP-SAKE: Incorrect AT_MIC_S");
		FUNC3(data, FAILURE);
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		ret->allowNotifications = FALSE;
		FUNC5(MSG_DEBUG, "EAP-SAKE: Sending "
			   "Response/Auth-Reject");
		return FUNC0(data, id, 0,
					  EAP_SAKE_SUBTYPE_AUTH_REJECT);
	}

	FUNC5(MSG_DEBUG, "EAP-SAKE: Sending Response/Confirm");

	resp = FUNC0(data, id, 2 + EAP_SAKE_MIC_LEN,
				  EAP_SAKE_SUBTYPE_CONFIRM);
	if (resp == NULL)
		return NULL;

	FUNC5(MSG_DEBUG, "EAP-SAKE: * AT_MIC_P");
	FUNC10(resp, EAP_SAKE_AT_MIC_P);
	FUNC10(resp, 2 + EAP_SAKE_MIC_LEN);
	rpos = FUNC9(resp, EAP_SAKE_MIC_LEN);
	if (FUNC1(data->tek.auth, data->rand_s, data->rand_p,
				 data->serverid, data->serverid_len,
				 data->peerid, data->peerid_len, 1,
				 FUNC7(resp), FUNC8(resp), rpos,
				 rpos)) {
		FUNC5(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
		FUNC6(resp);
		return NULL;
	}

	FUNC3(data, SUCCESS);
	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_UNCOND_SUCC;
	ret->allowNotifications = FALSE;

	return resp;
}