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
struct eap_sim_attrs {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int state; void* notification; } ;

/* Variables and functions */
#define  CHALLENGE 131 
 scalar_t__ EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT ; 
 scalar_t__ EAP_AKA_SUBTYPE_CLIENT_ERROR ; 
 scalar_t__ EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE ; 
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
#define  IDENTITY 130 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  NOTIFICATION 129 
#define  REAUTH 128 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_aka_data*,int) ; 
 scalar_t__ FUNC8 (struct eap_aka_data*,scalar_t__) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ ,scalar_t__,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC10 (scalar_t__ const*,scalar_t__ const*,struct eap_sim_attrs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC12(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_aka_data *data = priv;
	const u8 *pos, *end;
	u8 subtype;
	size_t len;
	struct eap_sim_attrs attr;

	pos = FUNC9(EAP_VENDOR_IETF, data->eap_method, respData,
			       &len);
	if (pos == NULL || len < 3)
		return;

	end = pos + len;
	subtype = *pos;
	pos += 3;

	if (FUNC8(data, subtype)) {
		FUNC11(MSG_DEBUG, "EAP-AKA: Unrecognized or unexpected "
			   "EAP-AKA Subtype in EAP Response");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC7(data, NOTIFICATION);
		return;
	}

	if (FUNC10(pos, end, &attr,
			       data->eap_method == EAP_TYPE_AKA_PRIME ? 2 : 1,
			       0)) {
		FUNC11(MSG_DEBUG, "EAP-AKA: Failed to parse attributes");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC7(data, NOTIFICATION);
		return;
	}

	if (subtype == EAP_AKA_SUBTYPE_CLIENT_ERROR) {
		FUNC2(sm, data, respData, &attr);
		return;
	}

	if (subtype == EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT) {
		FUNC0(sm, data, respData,
						      &attr);
		return;
	}

	switch (data->state) {
	case IDENTITY:
		FUNC3(sm, data, respData, &attr);
		break;
	case CHALLENGE:
		if (subtype == EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE) {
			FUNC6(sm, data, respData,
						     &attr);
		} else {
			FUNC1(sm, data, respData, &attr);
		}
		break;
	case REAUTH:
		FUNC5(sm, data, respData, &attr);
		break;
	case NOTIFICATION:
		FUNC4(sm, data, respData, &attr);
		break;
	default:
		FUNC11(MSG_DEBUG, "EAP-AKA: Unknown state %d in "
			   "process", data->state);
		break;
	}
}