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
struct ttls_parse_avp {int /*<<< orphan*/  eapdata; } ;
struct eap_ttls_data {int phase2_type; int ready_for_tnc; int /*<<< orphan*/  pending_phase2_req; int /*<<< orphan*/  phase2_success; scalar_t__ tnc_started; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {int /*<<< orphan*/  methodState; } ;
typedef  enum phase2_types { ____Placeholder_phase2_types } phase2_types ;

/* Variables and functions */
#define  EAP_TTLS_PHASE2_CHAP 132 
#define  EAP_TTLS_PHASE2_EAP 131 
#define  EAP_TTLS_PHASE2_MSCHAP 130 
#define  EAP_TTLS_PHASE2_MSCHAPV2 129 
#define  EAP_TTLS_PHASE2_PAP 128 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_ttls_data*,struct wpabuf*,int /*<<< orphan*/ ,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*,struct wpabuf**) ; 
 int FUNC3 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC8(struct eap_sm *sm,
				      struct eap_ttls_data *data,
				      struct eap_method_ret *ret,
				      u8 identifier,
				      struct ttls_parse_avp *parse,
				      struct wpabuf *in_decrypted,
				      struct wpabuf **out_data)
{
	struct wpabuf *resp = NULL;
	struct eap_peer_config *config = FUNC0(sm);
	int res;
	enum phase2_types phase2_type = data->phase2_type;

#ifdef EAP_TNC
	if (data->tnc_started)
		phase2_type = EAP_TTLS_PHASE2_EAP;
#endif /* EAP_TNC */

	switch (phase2_type) {
	case EAP_TTLS_PHASE2_EAP:
		if (FUNC2(sm, data, ret, parse, &resp) <
		    0)
			return -1;
		break;
	case EAP_TTLS_PHASE2_MSCHAPV2:
		res = FUNC3(sm, data, ret, parse);
#ifdef EAP_TNC
		if (res == 1 && parse->eapdata && data->phase2_success) {
			/*
			 * TNC may be required as the next
			 * authentication method within the tunnel.
			 */
			ret->methodState = METHOD_MAY_CONT;
			data->ready_for_tnc = 1;
			if (eap_ttls_process_tnc_start(sm, data, ret, parse,
						       &resp) == 0)
				break;
		}
#endif /* EAP_TNC */
		return res;
	case EAP_TTLS_PHASE2_MSCHAP:
	case EAP_TTLS_PHASE2_PAP:
	case EAP_TTLS_PHASE2_CHAP:
#ifdef EAP_TNC
		if (eap_ttls_process_tnc_start(sm, data, ret, parse, &resp) <
		    0)
			return -1;
		break;
#else /* EAP_TNC */
		/* EAP-TTLS/{MSCHAP,PAP,CHAP} should not send any TLS tunneled
		 * requests to the supplicant */
		FUNC5(MSG_INFO, "EAP-TTLS: Phase 2 received unexpected "
			   "tunneled data");
		return -1;
#endif /* EAP_TNC */
	}

	if (resp) {
		if (FUNC1(sm, data, resp, identifier,
					      out_data) < 0)
			return -1;
	} else if (config->pending_req_identity ||
		   config->pending_req_password ||
		   config->pending_req_otp ||
		   config->pending_req_new_password ||
		   config->pending_req_sim) {
		FUNC6(data->pending_phase2_req);
		data->pending_phase2_req = FUNC7(in_decrypted);
	}

	return 0;
}