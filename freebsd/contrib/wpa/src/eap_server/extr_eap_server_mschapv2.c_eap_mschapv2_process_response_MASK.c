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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int* identity; size_t identity_len; TYPE_1__* user; } ;
struct eap_mschapv2_hdr {scalar_t__ op_code; int /*<<< orphan*/  mschapv2_id; } ;
struct eap_mschapv2_data {int* peer_challenge; int master_key_valid; void* state; int /*<<< orphan*/  master_key; int /*<<< orphan*/  auth_response; int /*<<< orphan*/  auth_challenge; int /*<<< orphan*/  resp_mschapv2_id; } ;
struct TYPE_2__ {int* password; int /*<<< orphan*/  password_len; scalar_t__ password_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 void* FAILURE_REQ ; 
 int /*<<< orphan*/  MSCHAPV2_KEY_LEN ; 
 scalar_t__ MSCHAPV2_OP_RESPONSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* SUCCESS_REQ ; 
 scalar_t__ FUNC0 (int const*,int /*<<< orphan*/ ,int const*,size_t,int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,char*,int const*,size_t,int*,int const*) ; 
 scalar_t__ FUNC4 (int const*,int const*,int /*<<< orphan*/ ,int const*,size_t,int const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int const*,int const*,size_t,int*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int const*,int const*,size_t,int*,int*) ; 
 scalar_t__ FUNC7 (int*,int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int const*,int*) ; 
 scalar_t__ FUNC9 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (size_t) ; 
 scalar_t__ FUNC12 (int const*,int const*,size_t) ; 
 scalar_t__ FUNC13 (int const*,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,size_t,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC20(struct eap_sm *sm,
					  struct eap_mschapv2_data *data,
					  struct wpabuf *respData)
{
	struct eap_mschapv2_hdr *resp;
	const u8 *pos, *end, *peer_challenge, *nt_response, *name;
	u8 flags;
	size_t len, name_len, i;
	u8 expected[24];
	const u8 *username, *user;
	size_t username_len, user_len;
	int res;
	char *buf;

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, respData,
			       &len);
	if (pos == NULL || len < 1)
		return; /* Should not happen - frame already validated */

	end = pos + len;
	resp = (struct eap_mschapv2_hdr *) pos;
	pos = (u8 *) (resp + 1);

	if (len < sizeof(*resp) + 1 + 49 ||
	    resp->op_code != MSCHAPV2_OP_RESPONSE ||
	    pos[0] != 49) {
		FUNC17(MSG_DEBUG, "EAP-MSCHAPV2: Invalid response",
				respData);
		data->state = FAILURE;
		return;
	}
	data->resp_mschapv2_id = resp->mschapv2_id;
	pos++;
	peer_challenge = pos;
	pos += 16 + 8;
	nt_response = pos;
	pos += 24;
	flags = *pos++;
	name = pos;
	name_len = end - name;

	if (data->peer_challenge) {
		FUNC19(MSG_DEBUG, "EAP-MSCHAPV2: Using pre-configured "
			   "Peer-Challenge");
		peer_challenge = data->peer_challenge;
	}
	FUNC15(MSG_MSGDUMP, "EAP-MSCHAPV2: Peer-Challenge",
		    peer_challenge, 16);
	FUNC15(MSG_MSGDUMP, "EAP-MSCHAPV2: NT-Response", nt_response, 24);
	FUNC19(MSG_MSGDUMP, "EAP-MSCHAPV2: Flags 0x%x", flags);
	FUNC16(MSG_MSGDUMP, "EAP-MSCHAPV2: Name", name, name_len);

	buf = FUNC11(name_len * 4 + 1);
	if (buf) {
		FUNC14(buf, name_len * 4 + 1, name, name_len);
		FUNC2(sm, "EAP-MSCHAPV2 Name '%s'", buf);
		FUNC10(buf);
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

	user = name;
	user_len = name_len;
	for (i = 0; i < user_len; i++) {
		if (user[i] == '\\') {
			user_len -= i + 1;
			user += i + 1;
			break;
		}
	}

#ifdef CONFIG_TESTING_OPTIONS
	{
		u8 challenge[8];

		if (challenge_hash(peer_challenge, data->auth_challenge,
				   username, username_len, challenge) == 0) {
			eap_server_mschap_rx_callback(sm, "EAP-MSCHAPV2",
						      username, username_len,
						      challenge, nt_response);
		}
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (username_len != user_len ||
	    FUNC12(username, user, username_len) != 0) {
		FUNC19(MSG_DEBUG, "EAP-MSCHAPV2: Mismatch in user names");
		FUNC16(MSG_DEBUG, "EAP-MSCHAPV2: Expected user "
				  "name", username, username_len);
		FUNC16(MSG_DEBUG, "EAP-MSCHAPV2: Received user "
				  "name", user, user_len);
		data->state = FAILURE;
		return;
	}

	FUNC16(MSG_MSGDUMP, "EAP-MSCHAPV2: User name",
			  username, username_len);

	if (sm->user->password_hash) {
		res = FUNC6(data->auth_challenge,
						  peer_challenge,
						  username, username_len,
						  sm->user->password,
						  expected);
	} else {
		res = FUNC5(data->auth_challenge,
					   peer_challenge,
					   username, username_len,
					   sm->user->password,
					   sm->user->password_len,
					   expected);
	}
	if (res) {
		data->state = FAILURE;
		return;
	}

	if (FUNC13(nt_response, expected, 24) == 0) {
		const u8 *pw_hash;
		u8 pw_hash_buf[16], pw_hash_hash[16];

		FUNC19(MSG_DEBUG, "EAP-MSCHAPV2: Correct NT-Response");
		data->state = SUCCESS_REQ;

		/* Authenticator response is not really needed yet, but
		 * calculate it here so that peer_challenge and username need
		 * not be saved. */
		if (sm->user->password_hash) {
			pw_hash = sm->user->password;
		} else {
			if (FUNC9(sm->user->password,
					     sm->user->password_len,
					     pw_hash_buf) < 0) {
				data->state = FAILURE;
				return;
			}
			pw_hash = pw_hash_buf;
		}
		if (FUNC4(
			    pw_hash, peer_challenge, data->auth_challenge,
			    username, username_len, nt_response,
			    data->auth_response) < 0 ||
		    FUNC8(pw_hash, pw_hash_hash) < 0 ||
		    FUNC7(pw_hash_hash, nt_response,
				   data->master_key)) {
			data->state = FAILURE;
			return;
		}
		data->master_key_valid = 1;
		FUNC18(MSG_DEBUG, "EAP-MSCHAPV2: Derived Master Key",
				data->master_key, MSCHAPV2_KEY_LEN);
	} else {
		FUNC15(MSG_MSGDUMP, "EAP-MSCHAPV2: Expected NT-Response",
			    expected, 24);
		FUNC19(MSG_DEBUG, "EAP-MSCHAPV2: Invalid NT-Response");
		data->state = FAILURE_REQ;
	}
}