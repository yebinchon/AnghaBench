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
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int phase2_type; scalar_t__ tnc_started; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;
struct eap_hdr {int dummy; } ;
typedef  enum phase2_types { ____Placeholder_phase2_types } phase2_types ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
#define  EAP_TTLS_PHASE2_CHAP 132 
#define  EAP_TTLS_PHASE2_EAP 131 
#define  EAP_TTLS_PHASE2_MSCHAP 130 
#define  EAP_TTLS_PHASE2_MSCHAPV2 129 
#define  EAP_TTLS_PHASE2_PAP 128 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*) ; 
 int FUNC4 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ; 
 int FUNC5 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ; 
 int FUNC6 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ; 
 int FUNC7 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ; 
 int FUNC8 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct eap_sm *sm,
				   struct eap_ttls_data *data,
				   struct eap_method_ret *ret,
				   struct eap_hdr *hdr,
				   struct wpabuf **resp)
{
	int res = 0;
	size_t len;
	enum phase2_types phase2_type = data->phase2_type;

#ifdef EAP_TNC
	if (data->tnc_started) {
		wpa_printf(MSG_DEBUG, "EAP-TTLS: Processing TNC");
		phase2_type = EAP_TTLS_PHASE2_EAP;
	}
#endif /* EAP_TNC */

	if (phase2_type == EAP_TTLS_PHASE2_MSCHAPV2 ||
	    phase2_type == EAP_TTLS_PHASE2_MSCHAP ||
	    phase2_type == EAP_TTLS_PHASE2_PAP ||
	    phase2_type == EAP_TTLS_PHASE2_CHAP) {
		if (FUNC0(sm, &len) == NULL) {
			FUNC9(MSG_INFO,
				   "EAP-TTLS: Identity not configured");
			FUNC2(sm);
			if (FUNC1(sm, &len) == NULL)
				FUNC3(sm);
			return 0;
		}

		if (FUNC1(sm, &len) == NULL) {
			FUNC9(MSG_INFO,
				   "EAP-TTLS: Password not configured");
			FUNC3(sm);
			return 0;
		}
	}

	switch (phase2_type) {
	case EAP_TTLS_PHASE2_EAP:
		res = FUNC5(sm, data, ret, hdr, resp);
		break;
	case EAP_TTLS_PHASE2_MSCHAPV2:
		res = FUNC7(sm, data, ret, resp);
		break;
	case EAP_TTLS_PHASE2_MSCHAP:
		res = FUNC6(sm, data, ret, resp);
		break;
	case EAP_TTLS_PHASE2_PAP:
		res = FUNC8(sm, data, ret, resp);
		break;
	case EAP_TTLS_PHASE2_CHAP:
		res = FUNC4(sm, data, ret, resp);
		break;
	default:
		FUNC9(MSG_ERROR, "EAP-TTLS: Phase 2 - Unknown");
		res = -1;
		break;
	}

	if (res < 0) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
	}

	return res;
}