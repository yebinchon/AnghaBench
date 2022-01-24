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
struct eap_sim_attrs {int dummy; } ;
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* decision; void* ignore; } ;
struct eap_hdr {int identifier; int /*<<< orphan*/  length; } ;
struct eap_aka_data {scalar_t__ eap_method; scalar_t__ state; scalar_t__ use_result_ind; } ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
#define  EAP_AKA_SUBTYPE_CHALLENGE 132 
#define  EAP_AKA_SUBTYPE_CLIENT_ERROR 131 
#define  EAP_AKA_SUBTYPE_IDENTITY 130 
#define  EAP_AKA_SUBTYPE_NOTIFICATION 129 
#define  EAP_AKA_SUBTYPE_REAUTHENTICATION 128 
 int /*<<< orphan*/  EAP_AKA_UNABLE_TO_PROCESS_PACKET ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
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
 struct wpabuf* FUNC1 (struct eap_aka_data*,int,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,struct eap_aka_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,struct eap_aka_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC4 (struct eap_sm*,struct eap_aka_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC5 (struct eap_sm*,struct eap_aka_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/ * FUNC6 (struct eap_sm*,size_t*) ; 
 int* FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct wpabuf const*,size_t*) ; 
 scalar_t__ FUNC8 (int const*,scalar_t__,struct eap_sim_attrs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 struct eap_hdr* FUNC12 (struct wpabuf const*) ; 
 scalar_t__ FUNC13 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_aka_data *data = priv;
	const struct eap_hdr *req;
	u8 subtype, id;
	struct wpabuf *res;
	const u8 *pos;
	struct eap_sim_attrs attr;
	size_t len;

	FUNC10(MSG_DEBUG, "EAP-AKA: EAP data", reqData);
	if (FUNC6(sm, &len) == NULL) {
		FUNC11(MSG_INFO, "EAP-AKA: Identity not configured");
		FUNC9(sm);
		ret->ignore = TRUE;
		return NULL;
	}

	pos = FUNC7(EAP_VENDOR_IETF, data->eap_method, reqData,
			       &len);
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
	FUNC11(MSG_DEBUG, "EAP-AKA: Subtype=%d", subtype);
	pos += 2; /* Reserved */

	if (FUNC8(pos, FUNC13(reqData) + len, &attr,
			       data->eap_method == EAP_TYPE_AKA_PRIME ? 2 : 1,
			       0)) {
		res = FUNC1(data, id,
					   EAP_AKA_UNABLE_TO_PROCESS_PACKET);
		goto done;
	}

	switch (subtype) {
	case EAP_AKA_SUBTYPE_IDENTITY:
		res = FUNC3(sm, data, id, reqData, &attr);
		break;
	case EAP_AKA_SUBTYPE_CHALLENGE:
		res = FUNC2(sm, data, id, reqData, &attr);
		break;
	case EAP_AKA_SUBTYPE_NOTIFICATION:
		res = FUNC4(sm, data, id, reqData,
						   &attr);
		break;
	case EAP_AKA_SUBTYPE_REAUTHENTICATION:
		res = FUNC5(sm, data, id, reqData,
						       &attr);
		break;
	case EAP_AKA_SUBTYPE_CLIENT_ERROR:
		FUNC11(MSG_DEBUG, "EAP-AKA: subtype Client-Error");
		res = FUNC1(data, id,
					   EAP_AKA_UNABLE_TO_PROCESS_PACKET);
		break;
	default:
		FUNC11(MSG_DEBUG, "EAP-AKA: Unknown subtype=%d", subtype);
		res = FUNC1(data, id,
					   EAP_AKA_UNABLE_TO_PROCESS_PACKET);
		break;
	}

done:
	if (data->state == FAILURE) {
		ret->decision = DECISION_FAIL;
		ret->methodState = METHOD_DONE;
	} else if (data->state == SUCCESS) {
		ret->decision = data->use_result_ind ?
			DECISION_UNCOND_SUCC : DECISION_COND_SUCC;
		/*
		 * It is possible for the server to reply with AKA
		 * Notification, so we must allow the method to continue and
		 * not only accept EAP-Success at this point.
		 */
		ret->methodState = data->use_result_ind ?
			METHOD_DONE : METHOD_MAY_CONT;
	} else if (data->state == RESULT_SUCCESS)
		ret->methodState = METHOD_CONT;

	if (ret->methodState == METHOD_DONE) {
		ret->allowNotifications = FALSE;
	}

	return res;
}