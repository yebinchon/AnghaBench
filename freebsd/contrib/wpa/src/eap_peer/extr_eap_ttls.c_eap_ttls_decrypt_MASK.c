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
typedef  struct wpabuf const wpabuf ;
struct ttls_parse_avp {int /*<<< orphan*/  eapdata; } ;
struct eap_ttls_data {scalar_t__ phase2_start; int /*<<< orphan*/  ssl; int /*<<< orphan*/  ttls_version; struct wpabuf const* pending_phase2_req; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;
typedef  int /*<<< orphan*/  parse ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf const*,struct wpabuf const**) ; 
 int FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wpabuf const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int /*<<< orphan*/ ,struct wpabuf const**) ; 
 scalar_t__ FUNC4 (struct wpabuf const*,struct ttls_parse_avp*) ; 
 int FUNC5 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int /*<<< orphan*/ ,struct wpabuf const**) ; 
 int FUNC6 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int /*<<< orphan*/ ,struct ttls_parse_avp*,struct wpabuf const*,struct wpabuf const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ttls_parse_avp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 
 scalar_t__ FUNC11 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC12(struct eap_sm *sm, struct eap_ttls_data *data,
			    struct eap_method_ret *ret, u8 identifier,
			    const struct wpabuf *in_data,
			    struct wpabuf **out_data)
{
	struct wpabuf *in_decrypted = NULL;
	int retval = 0;
	struct ttls_parse_avp parse;

	FUNC8(&parse, 0, sizeof(parse));

	FUNC9(MSG_DEBUG, "EAP-TTLS: received %lu bytes encrypted data for"
		   " Phase 2",
		   in_data ? (unsigned long) FUNC11(in_data) : 0);

	if (data->pending_phase2_req) {
		FUNC9(MSG_DEBUG, "EAP-TTLS: Pending Phase 2 request - "
			   "skip decryption and use old data");
		/* Clear TLS reassembly state. */
		FUNC2(&data->ssl);

		in_decrypted = data->pending_phase2_req;
		data->pending_phase2_req = NULL;
		if (FUNC11(in_decrypted) == 0) {
			FUNC10(in_decrypted);
			return FUNC3(
				sm, data, ret, identifier, out_data);
		}
		goto continue_req;
	}

	if ((in_data == NULL || FUNC11(in_data) == 0) &&
	    data->phase2_start) {
		return FUNC5(sm, data, ret, identifier,
					     out_data);
	}

	if (in_data == NULL || FUNC11(in_data) == 0) {
		/* Received TLS ACK - requesting more fragments */
		return FUNC1(sm, &data->ssl, EAP_TYPE_TTLS,
					    data->ttls_version,
					    identifier, NULL, out_data);
	}

	retval = FUNC0(sm, &data->ssl, in_data, &in_decrypted);
	if (retval)
		goto done;

continue_req:
	data->phase2_start = 0;

	if (FUNC4(in_decrypted, &parse) < 0) {
		retval = -1;
		goto done;
	}

	retval = FUNC6(sm, data, ret, identifier,
					    &parse, in_decrypted, out_data);

done:
	FUNC10(in_decrypted);
	FUNC7(parse.eapdata);

	if (retval < 0) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
	}

	return retval;
}