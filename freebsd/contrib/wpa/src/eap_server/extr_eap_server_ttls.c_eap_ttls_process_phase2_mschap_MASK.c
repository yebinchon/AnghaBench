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
typedef  scalar_t__ u8 ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {TYPE_1__* user; int /*<<< orphan*/  identity_len; int /*<<< orphan*/  identity; } ;
struct TYPE_2__ {int ttls_auth; int /*<<< orphan*/  password_len; int /*<<< orphan*/  password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int EAP_TTLS_AUTH_MSCHAP ; 
 size_t EAP_TTLS_MSCHAP_CHALLENGE_LEN ; 
 size_t EAP_TTLS_MSCHAP_RESPONSE_LEN ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC2 (struct eap_sm*,struct eap_ttls_data*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_ttls_data*) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC10(struct eap_sm *sm,
					   struct eap_ttls_data *data,
					   u8 *challenge, size_t challenge_len,
					   u8 *response, size_t response_len)
{
	u8 *chal, nt_response[24];

	if (challenge == NULL || response == NULL ||
	    challenge_len != EAP_TTLS_MSCHAP_CHALLENGE_LEN ||
	    response_len != EAP_TTLS_MSCHAP_RESPONSE_LEN) {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: Invalid MS-CHAP "
			   "attributes (challenge len %lu response len %lu)",
			   (unsigned long) challenge_len,
			   (unsigned long) response_len);
		FUNC3(data, FAILURE);
		return;
	}

	if (!sm->user || !sm->user->password ||
	    !(sm->user->ttls_auth & EAP_TTLS_AUTH_MSCHAP)) {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: No user password "
			   "configured");
		FUNC3(data, FAILURE);
		return;
	}

	chal = FUNC2(sm, data,
					   EAP_TTLS_MSCHAP_CHALLENGE_LEN + 1);
	if (chal == NULL) {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: Failed to generate "
			   "challenge from TLS data");
		FUNC3(data, FAILURE);
		return;
	}

#ifdef CONFIG_TESTING_OPTIONS
	eap_server_mschap_rx_callback(sm, "TTLS-MSCHAP",
				      sm->identity, sm->identity_len,
				      challenge, response + 2 + 24);
#endif /* CONFIG_TESTING_OPTIONS */

	if (FUNC7(challenge, chal, EAP_TTLS_MSCHAP_CHALLENGE_LEN)
	    != 0 ||
	    response[0] != chal[EAP_TTLS_MSCHAP_CHALLENGE_LEN]) {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: Challenge mismatch");
		FUNC6(chal);
		FUNC3(data, FAILURE);
		return;
	}
	FUNC6(chal);

	if ((sm->user->password_hash &&
	     FUNC0(challenge, sm->user->password, nt_response)) ||
	    (!sm->user->password_hash &&
	     FUNC5(challenge, sm->user->password,
				   sm->user->password_len, nt_response))) {
		FUNC3(data, FAILURE);
		return;
	}

	if (FUNC7(nt_response, response + 2 + 24, 24) == 0) {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: Correct response");
		FUNC3(data, SUCCESS);
		FUNC4(sm, data);
	} else {
		FUNC9(MSG_DEBUG, "EAP-TTLS/MSCHAP: Invalid NT-Response");
		FUNC8(MSG_MSGDUMP, "EAP-TTLS/MSCHAP: Received",
			    response + 2 + 24, 24);
		FUNC8(MSG_MSGDUMP, "EAP-TTLS/MSCHAP: Expected",
			    nt_response, 24);
		FUNC3(data, FAILURE);
	}
}