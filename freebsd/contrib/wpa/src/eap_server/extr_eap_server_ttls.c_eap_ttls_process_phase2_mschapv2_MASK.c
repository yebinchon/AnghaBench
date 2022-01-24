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
typedef  char u8 ;
struct eap_ttls_data {int mschapv2_resp_ok; char mschapv2_ident; int /*<<< orphan*/  mschapv2_auth_response; } ;
struct eap_sm {char* identity; size_t identity_len; TYPE_1__* user; } ;
struct TYPE_2__ {int ttls_auth; int /*<<< orphan*/  password_len; int /*<<< orphan*/  password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int EAP_TTLS_AUTH_MSCHAPV2 ; 
 size_t EAP_TTLS_MSCHAPV2_CHALLENGE_LEN ; 
 size_t EAP_TTLS_MSCHAPV2_RESPONSE_LEN ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  PHASE2_MSCHAPV2_RESP ; 
 scalar_t__ FUNC0 (char*,char*,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,char*,char*,size_t,char*,char*) ; 
 char* FUNC2 (struct eap_sm*,struct eap_ttls_data*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC13(struct eap_sm *sm,
					     struct eap_ttls_data *data,
					     u8 *challenge,
					     size_t challenge_len,
					     u8 *response, size_t response_len)
{
	u8 *chal, *username, nt_response[24], *rx_resp, *peer_challenge,
		*auth_challenge;
	size_t username_len, i;

	if (challenge == NULL || response == NULL ||
	    challenge_len != EAP_TTLS_MSCHAPV2_CHALLENGE_LEN ||
	    response_len != EAP_TTLS_MSCHAPV2_RESPONSE_LEN) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Invalid MS-CHAP2 "
			   "attributes (challenge len %lu response len %lu)",
			   (unsigned long) challenge_len,
			   (unsigned long) response_len);
		FUNC3(data, FAILURE);
		return;
	}

	if (!sm->user || !sm->user->password ||
	    !(sm->user->ttls_auth & EAP_TTLS_AUTH_MSCHAPV2)) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: No user password "
			   "configured");
		FUNC3(data, FAILURE);
		return;
	}

	if (sm->identity == NULL) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: No user identity "
			   "known");
		FUNC3(data, FAILURE);
		return;
	}

	/* MSCHAPv2 does not include optional domain name in the
	 * challenge-response calculation, so remove domain prefix
	 * (if present). */
	username = sm->identity;
	username_len = sm->identity_len;
	for (i = 0; i < username_len; i++) {
		if (username[i] == '\\') {
			username_len -= i + 1;
			username += i + 1;
			break;
		}
	}

	chal = FUNC2(
		sm, data, EAP_TTLS_MSCHAPV2_CHALLENGE_LEN + 1);
	if (chal == NULL) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Failed to generate "
			   "challenge from TLS data");
		FUNC3(data, FAILURE);
		return;
	}

	if (FUNC9(challenge, chal, EAP_TTLS_MSCHAPV2_CHALLENGE_LEN)
	    != 0 ||
	    response[0] != chal[EAP_TTLS_MSCHAPV2_CHALLENGE_LEN]) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Challenge mismatch");
		FUNC8(chal);
		FUNC3(data, FAILURE);
		return;
	}
	FUNC8(chal);

	auth_challenge = challenge;
	peer_challenge = response + 2;

	FUNC11(MSG_MSGDUMP, "EAP-TTLS/MSCHAPV2: User",
			  username, username_len);
	FUNC10(MSG_MSGDUMP, "EAP-TTLS/MSCHAPV2: auth_challenge",
		    auth_challenge, EAP_TTLS_MSCHAPV2_CHALLENGE_LEN);
	FUNC10(MSG_MSGDUMP, "EAP-TTLS/MSCHAPV2: peer_challenge",
		    peer_challenge, EAP_TTLS_MSCHAPV2_CHALLENGE_LEN);

	if (sm->user->password_hash) {
		FUNC7(auth_challenge, peer_challenge,
					    username, username_len,
					    sm->user->password,
					    nt_response);
	} else {
		FUNC6(auth_challenge, peer_challenge,
				     username, username_len,
				     sm->user->password,
				     sm->user->password_len,
				     nt_response);
	}

	rx_resp = response + 2 + EAP_TTLS_MSCHAPV2_CHALLENGE_LEN + 8;
#ifdef CONFIG_TESTING_OPTIONS
	{
		u8 challenge2[8];

		if (challenge_hash(peer_challenge, auth_challenge,
				   username, username_len, challenge2) == 0) {
			eap_server_mschap_rx_callback(sm, "TTLS-MSCHAPV2",
						      username, username_len,
						      challenge2, rx_resp);
		}
	}
#endif /* CONFIG_TESTING_OPTIONS */
	if (FUNC9(nt_response, rx_resp, 24) == 0) {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Correct "
			   "NT-Response");
		data->mschapv2_resp_ok = 1;

		if (sm->user->password_hash) {
			FUNC5(
				sm->user->password,
				peer_challenge, auth_challenge,
				username, username_len, nt_response,
				data->mschapv2_auth_response);
		} else {
			FUNC4(
				sm->user->password, sm->user->password_len,
				peer_challenge, auth_challenge,
				username, username_len, nt_response,
				data->mschapv2_auth_response);
		}
	} else {
		FUNC12(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Invalid "
			   "NT-Response");
		FUNC10(MSG_MSGDUMP, "EAP-TTLS/MSCHAPV2: Received",
			    rx_resp, 24);
		FUNC10(MSG_MSGDUMP, "EAP-TTLS/MSCHAPV2: Expected",
			    nt_response, 24);
		data->mschapv2_resp_ok = 0;
	}
	FUNC3(data, PHASE2_MSCHAPV2_RESP);
	data->mschapv2_ident = response[0];
}