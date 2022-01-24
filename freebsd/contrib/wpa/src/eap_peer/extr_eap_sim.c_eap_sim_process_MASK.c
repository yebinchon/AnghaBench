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
struct eap_sim_data {scalar_t__ state; scalar_t__ use_result_ind; } ;
struct eap_sim_attrs {int dummy; } ;
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* decision; void* ignore; } ;
struct eap_hdr {int identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
#define  EAP_SIM_SUBTYPE_CHALLENGE 132 
#define  EAP_SIM_SUBTYPE_CLIENT_ERROR 131 
#define  EAP_SIM_SUBTYPE_NOTIFICATION 130 
#define  EAP_SIM_SUBTYPE_REAUTHENTICATION 129 
#define  EAP_SIM_SUBTYPE_START 128 
 int /*<<< orphan*/  EAP_SIM_UNABLE_TO_PROCESS_PACKET ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAILURE ; 
 void* FALSE ; 
 scalar_t__ METHOD_CONT ; 
 scalar_t__ METHOD_DONE ; 
 scalar_t__ METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RESULT_SUCCESS ; 
 scalar_t__ SUCCESS ; 
 void* TRUE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (struct eap_sim_data*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int const*,scalar_t__,struct eap_sim_attrs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC6 (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC7 (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC8 (struct eap_sm*,struct eap_sim_data*,int,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC9 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 struct eap_hdr* FUNC12 (struct wpabuf const*) ; 
 scalar_t__ FUNC13 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_sim_data *data = priv;
	const struct eap_hdr *req;
	u8 subtype, id;
	struct wpabuf *res;
	const u8 *pos;
	struct eap_sim_attrs attr;
	size_t len;

	FUNC10(MSG_DEBUG, "EAP-SIM: EAP data", reqData);
	if (FUNC1(sm, &len) == NULL) {
		FUNC11(MSG_INFO, "EAP-SIM: Identity not configured");
		FUNC9(sm);
		ret->ignore = TRUE;
		return NULL;
	}

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_SIM, reqData, &len);
	if (pos == NULL || len < 3) {
		ret->ignore = TRUE;
		return NULL;
	}
	req = FUNC12(reqData);
	id = req->identifier;
	len = FUNC0(req->length);

	ret->ignore = FALSE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = TRUE;

	subtype = *pos++;
	FUNC11(MSG_DEBUG, "EAP-SIM: Subtype=%d", subtype);
	pos += 2; /* Reserved */

	if (FUNC4(pos, FUNC13(reqData) + len, &attr, 0,
			       0)) {
		res = FUNC3(data, id,
					   EAP_SIM_UNABLE_TO_PROCESS_PACKET);
		goto done;
	}

	switch (subtype) {
	case EAP_SIM_SUBTYPE_START:
		res = FUNC8(sm, data, id, &attr);
		break;
	case EAP_SIM_SUBTYPE_CHALLENGE:
		res = FUNC5(sm, data, id, reqData, &attr);
		break;
	case EAP_SIM_SUBTYPE_NOTIFICATION:
		res = FUNC6(sm, data, id, reqData,
						   &attr);
		break;
	case EAP_SIM_SUBTYPE_REAUTHENTICATION:
		res = FUNC7(sm, data, id, reqData,
						       &attr);
		break;
	case EAP_SIM_SUBTYPE_CLIENT_ERROR:
		FUNC11(MSG_DEBUG, "EAP-SIM: subtype Client-Error");
		res = FUNC3(data, id,
					   EAP_SIM_UNABLE_TO_PROCESS_PACKET);
		break;
	default:
		FUNC11(MSG_DEBUG, "EAP-SIM: Unknown subtype=%d", subtype);
		res = FUNC3(data, id,
					   EAP_SIM_UNABLE_TO_PROCESS_PACKET);
		break;
	}

done:
	if (data->state == FAILURE) {
		ret->decision = DECISION_FAIL;
		ret->methodState = METHOD_DONE;
	} else if (data->state == SUCCESS) {
		ret->decision = data->use_result_ind ?
			DECISION_UNCOND_SUCC : DECISION_COND_SUCC;
		ret->methodState = data->use_result_ind ?
			METHOD_DONE : METHOD_MAY_CONT;
	} else if (data->state == RESULT_SUCCESS)
		ret->methodState = METHOD_CONT;

	if (ret->methodState == METHOD_DONE) {
		ret->allowNotifications = FALSE;
	}

	return res;
}