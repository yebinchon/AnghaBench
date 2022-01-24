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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {int state; void* notification; } ;
struct eap_sim_attrs {int dummy; } ;

/* Variables and functions */
#define  CHALLENGE 131 
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 scalar_t__ EAP_SIM_SUBTYPE_CLIENT_ERROR ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  NOTIFICATION 130 
#define  REAUTH 129 
#define  START 128 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*,scalar_t__ const*,struct eap_sim_attrs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sim_data*,int) ; 
 scalar_t__ FUNC8 (struct eap_sim_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC10(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_sim_data *data = priv;
	const u8 *pos, *end;
	u8 subtype;
	size_t len;
	struct eap_sim_attrs attr;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_SIM, respData, &len);
	if (pos == NULL || len < 3)
		return;

	end = pos + len;
	subtype = *pos;
	pos += 3;

	if (FUNC8(data, subtype)) {
		FUNC9(MSG_DEBUG, "EAP-SIM: Unrecognized or unexpected "
			   "EAP-SIM Subtype in EAP Response");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC7(data, NOTIFICATION);
		return;
	}

	if (FUNC1(pos, end, &attr, 0, 0)) {
		FUNC9(MSG_DEBUG, "EAP-SIM: Failed to parse attributes");
		if (subtype != EAP_SIM_SUBTYPE_CLIENT_ERROR &&
		    (data->state == START || data->state == CHALLENGE ||
		     data->state == REAUTH)) {
			data->notification =
				EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
			FUNC7(data, NOTIFICATION);
			return;
		}
		FUNC7(data, FAILURE);
		return;
	}

	if (subtype == EAP_SIM_SUBTYPE_CLIENT_ERROR) {
		FUNC3(sm, data, respData, &attr);
		return;
	}

	switch (data->state) {
	case START:
		FUNC6(sm, data, respData, &attr);
		break;
	case CHALLENGE:
		FUNC2(sm, data, respData, &attr);
		break;
	case REAUTH:
		FUNC5(sm, data, respData, &attr);
		break;
	case NOTIFICATION:
		FUNC4(sm, data, respData, &attr);
		break;
	default:
		FUNC9(MSG_DEBUG, "EAP-SIM: Unknown state %d in "
			   "process", data->state);
		break;
	}
}