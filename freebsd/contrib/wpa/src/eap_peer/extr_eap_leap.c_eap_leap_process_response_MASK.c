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
struct eap_sm {void* leap_done; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  methodState; void* ignore; } ;
struct eap_leap_data {int /*<<< orphan*/  state; int /*<<< orphan*/  ap_challenge; int /*<<< orphan*/  ap_response; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_TYPE_LEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LEAP_DONE ; 
 int LEAP_RESPONSE_LEN ; 
 scalar_t__ const LEAP_VERSION ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC1 (struct eap_sm*,size_t*,int*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 scalar_t__ FUNC3 (scalar_t__ const*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__ const*,size_t,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__ const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_sm *sm, void *priv,
						 struct eap_method_ret *ret,
						 const struct wpabuf *reqData)
{
	struct eap_leap_data *data = priv;
	const u8 *pos, *password;
	u8 response_len, pw_hash[16], pw_hash_hash[16],
		expected[LEAP_RESPONSE_LEN];
	size_t password_len, len;
	int pwhash;

	FUNC8(MSG_DEBUG, "EAP-LEAP: Processing EAP-Response");

	password = FUNC1(sm, &password_len, &pwhash);
	if (password == NULL)
		return NULL;

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_LEAP, reqData, &len);
	if (pos == NULL || len < 3) {
		FUNC8(MSG_INFO, "EAP-LEAP: Invalid EAP-Response frame");
		ret->ignore = TRUE;
		return NULL;
	}

	if (*pos != LEAP_VERSION) {
		FUNC8(MSG_WARNING, "EAP-LEAP: Unsupported LEAP version "
			   "%d", *pos);
		ret->ignore = TRUE;
		return NULL;
	}
	pos++;

	pos++; /* skip unused byte */

	response_len = *pos++;
	if (response_len != LEAP_RESPONSE_LEN || response_len > len - 3) {
		FUNC8(MSG_INFO, "EAP-LEAP: Invalid response "
			   "(response_len=%d reqDataLen=%lu)",
			   response_len, (unsigned long) FUNC9(reqData));
		ret->ignore = TRUE;
		return NULL;
	}

	FUNC7(MSG_DEBUG, "EAP-LEAP: Response from AP",
		    pos, LEAP_RESPONSE_LEN);
	FUNC6(data->ap_response, pos, LEAP_RESPONSE_LEN);

	if (pwhash) {
		if (FUNC3(password, pw_hash_hash)) {
			ret->ignore = TRUE;
			return NULL;
		}
	} else {
		if (FUNC4(password, password_len, pw_hash) ||
		    FUNC3(pw_hash, pw_hash_hash)) {
			ret->ignore = TRUE;
			return NULL;
		}
	}
	if (FUNC0(data->ap_challenge, pw_hash_hash, expected)) {
		ret->ignore = TRUE;
		return NULL;
	}

	ret->methodState = METHOD_DONE;
	ret->allowNotifications = FALSE;

	if (FUNC5(pos, expected, LEAP_RESPONSE_LEN) != 0) {
		FUNC8(MSG_WARNING, "EAP-LEAP: AP sent an invalid "
			   "response - authentication failed");
		FUNC7(MSG_DEBUG, "EAP-LEAP: Expected response from AP",
			    expected, LEAP_RESPONSE_LEN);
		ret->decision = DECISION_FAIL;
		return NULL;
	}

	ret->decision = DECISION_UNCOND_SUCC;

	/* LEAP is somewhat odd method since it sends EAP-Success in the middle
	 * of the authentication. Use special variable to transit EAP state
	 * machine to SUCCESS state. */
	sm->leap_done = TRUE;
	data->state = LEAP_DONE;

	/* No more authentication messages expected; AP will send EAPOL-Key
	 * frames if encryption is enabled. */
	return NULL;
}