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
typedef  int /*<<< orphan*/  const u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSCHAPV2_AUTH_RESPONSE_LEN ; 
 int /*<<< orphan*/  MSCHAPV2_CHAL_LEN ; 
 size_t MSCHAPV2_MASTER_KEY_LEN ; 
 int /*<<< orphan*/  MSCHAPV2_NT_RESPONSE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC12(const u8 *identity, size_t identity_len,
			     const u8 *password, size_t password_len,
			     int pwhash,
			     const u8 *auth_challenge,
			     const u8 *peer_challenge,
			     u8 *nt_response, u8 *auth_response,
			     u8 *master_key)
{
	const u8 *username;
	size_t username_len;
	u8 password_hash[16], password_hash_hash[16];

	FUNC9(MSG_DEBUG, "MSCHAPV2: Identity",
			  identity, identity_len);
	username_len = identity_len;
	username = FUNC6(identity, &username_len);
	FUNC9(MSG_DEBUG, "MSCHAPV2: Username",
			  username, username_len);

	FUNC8(MSG_DEBUG, "MSCHAPV2: auth_challenge",
		    auth_challenge, MSCHAPV2_CHAL_LEN);
	FUNC8(MSG_DEBUG, "MSCHAPV2: peer_challenge",
		    peer_challenge, MSCHAPV2_CHAL_LEN);
	FUNC9(MSG_DEBUG, "MSCHAPV2: username",
			  username, username_len);
	/* Authenticator response is not really needed yet, but calculate it
	 * here so that challenges need not be saved. */
	if (pwhash) {
		FUNC11(MSG_DEBUG, "MSCHAPV2: password hash",
				password, password_len);
		if (FUNC3(auth_challenge, peer_challenge,
						username, username_len,
						password, nt_response) ||
		    FUNC1(
			    password, peer_challenge, auth_challenge,
			    username, username_len, nt_response,
			    auth_response))
			return -1;
	} else {
		FUNC10(MSG_DEBUG, "MSCHAPV2: password",
				      password, password_len);
		if (FUNC2(auth_challenge, peer_challenge,
					 username, username_len,
					 password, password_len,
					 nt_response) ||
		    FUNC0(password, password_len,
						    peer_challenge,
						    auth_challenge,
						    username, username_len,
						    nt_response,
						    auth_response))
			return -1;
	}
	FUNC8(MSG_DEBUG, "MSCHAPV2: NT Response",
		    nt_response, MSCHAPV2_NT_RESPONSE_LEN);
	FUNC8(MSG_DEBUG, "MSCHAPV2: Auth Response",
		    auth_response, MSCHAPV2_AUTH_RESPONSE_LEN);

	/* Generate master_key here since we have the needed data available. */
	if (pwhash) {
		if (FUNC5(password, password_hash_hash))
			return -1;
	} else {
		if (FUNC7(password, password_len, password_hash) ||
		    FUNC5(password_hash, password_hash_hash))
			return -1;
	}
	if (FUNC4(password_hash_hash, nt_response, master_key))
		return -1;
	FUNC11(MSG_DEBUG, "MSCHAPV2: Master Key",
			master_key, MSCHAPV2_MASTER_KEY_LEN);

	return 0;
}