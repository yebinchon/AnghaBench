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
typedef  scalar_t__ const u8 ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct TYPE_2__ {int ttls_auth; int /*<<< orphan*/  password_len; int /*<<< orphan*/  password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int CHAP_MD5_LEN ; 
 int EAP_TTLS_AUTH_CHAP ; 
 size_t EAP_TTLS_CHAP_CHALLENGE_LEN ; 
 int EAP_TTLS_CHAP_PASSWORD_LEN ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,size_t,scalar_t__ const*) ; 
 scalar_t__* FUNC1 (struct eap_sm*,struct eap_ttls_data*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_ttls_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 scalar_t__ FUNC5 (scalar_t__ const*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
					 struct eap_ttls_data *data,
					 const u8 *challenge,
					 size_t challenge_len,
					 const u8 *password,
					 size_t password_len)
{
	u8 *chal, hash[CHAP_MD5_LEN];

	if (challenge == NULL || password == NULL ||
	    challenge_len != EAP_TTLS_CHAP_CHALLENGE_LEN ||
	    password_len != 1 + EAP_TTLS_CHAP_PASSWORD_LEN) {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: Invalid CHAP attributes "
			   "(challenge len %lu password len %lu)",
			   (unsigned long) challenge_len,
			   (unsigned long) password_len);
		FUNC2(data, FAILURE);
		return;
	}

	if (!sm->user || !sm->user->password || sm->user->password_hash ||
	    !(sm->user->ttls_auth & EAP_TTLS_AUTH_CHAP)) {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: No plaintext user "
			   "password configured");
		FUNC2(data, FAILURE);
		return;
	}

	chal = FUNC1(sm, data,
					   EAP_TTLS_CHAP_CHALLENGE_LEN + 1);
	if (chal == NULL) {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: Failed to generate "
			   "challenge from TLS data");
		FUNC2(data, FAILURE);
		return;
	}

	if (FUNC5(challenge, chal, EAP_TTLS_CHAP_CHALLENGE_LEN)
	    != 0 ||
	    password[0] != chal[EAP_TTLS_CHAP_CHALLENGE_LEN]) {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: Challenge mismatch");
		FUNC4(chal);
		FUNC2(data, FAILURE);
		return;
	}
	FUNC4(chal);

	/* MD5(Ident + Password + Challenge) */
	FUNC0(password[0], sm->user->password, sm->user->password_len,
		 challenge, challenge_len, hash);

	if (FUNC5(hash, password + 1, EAP_TTLS_CHAP_PASSWORD_LEN) ==
	    0) {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: Correct user password");
		FUNC2(data, SUCCESS);
		FUNC3(sm, data);
	} else {
		FUNC6(MSG_DEBUG, "EAP-TTLS/CHAP: Invalid user password");
		FUNC2(data, FAILURE);
	}
}