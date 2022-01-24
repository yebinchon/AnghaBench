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
struct eap_method_ret {void* ignore; } ;
struct eap_leap_data {int /*<<< orphan*/  state; int /*<<< orphan*/  peer_response; int /*<<< orphan*/  peer_challenge; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_LEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ LEAP_CHALLENGE_LEN ; 
 scalar_t__ const LEAP_RESPONSE_LEN ; 
 scalar_t__ const LEAP_VERSION ; 
 int /*<<< orphan*/  LEAP_WAIT_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (scalar_t__ const*,scalar_t__ const*,scalar_t__*) ; 
 scalar_t__* FUNC1 (struct eap_sm*,size_t*) ; 
 scalar_t__* FUNC2 (struct eap_sm*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__ const*,scalar_t__ const*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf const*) ; 
 scalar_t__* FUNC12 (struct wpabuf*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,scalar_t__ const) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct eap_sm *sm, void *priv,
						struct eap_method_ret *ret,
						const struct wpabuf *reqData)
{
	struct eap_leap_data *data = priv;
	struct wpabuf *resp;
	const u8 *pos, *challenge, *identity, *password;
	u8 challenge_len, *rpos;
	size_t identity_len, password_len, len;
	int pwhash;

	FUNC9(MSG_DEBUG, "EAP-LEAP: Processing EAP-Request");

	identity = FUNC1(sm, &identity_len);
	password = FUNC2(sm, &password_len, &pwhash);
	if (identity == NULL || password == NULL)
		return NULL;

	pos = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_LEAP, reqData, &len);
	if (pos == NULL || len < 3) {
		FUNC9(MSG_INFO, "EAP-LEAP: Invalid EAP-Request frame");
		ret->ignore = TRUE;
		return NULL;
	}

	if (*pos != LEAP_VERSION) {
		FUNC9(MSG_WARNING, "EAP-LEAP: Unsupported LEAP version "
			   "%d", *pos);
		ret->ignore = TRUE;
		return NULL;
	}
	pos++;

	pos++; /* skip unused byte */

	challenge_len = *pos++;
	if (challenge_len != LEAP_CHALLENGE_LEN || challenge_len > len - 3) {
		FUNC9(MSG_INFO, "EAP-LEAP: Invalid challenge "
			   "(challenge_len=%d reqDataLen=%lu)",
			   challenge_len, (unsigned long) FUNC11(reqData));
		ret->ignore = TRUE;
		return NULL;
	}
	challenge = pos;
	FUNC7(data->peer_challenge, challenge, LEAP_CHALLENGE_LEN);
	FUNC8(MSG_MSGDUMP, "EAP-LEAP: Challenge from AP",
		    challenge, LEAP_CHALLENGE_LEN);

	FUNC9(MSG_DEBUG, "EAP-LEAP: Generating Challenge Response");

	resp = FUNC5(EAP_VENDOR_IETF, EAP_TYPE_LEAP,
			     3 + LEAP_RESPONSE_LEN + identity_len,
			     EAP_CODE_RESPONSE, FUNC3(reqData));
	if (resp == NULL)
		return NULL;
	FUNC14(resp, LEAP_VERSION);
	FUNC14(resp, 0); /* unused */
	FUNC14(resp, LEAP_RESPONSE_LEN);
	rpos = FUNC12(resp, LEAP_RESPONSE_LEN);
	if ((pwhash && FUNC0(challenge, password, rpos)) ||
	    (!pwhash &&
	     FUNC6(challenge, password, password_len, rpos))) {
		FUNC9(MSG_DEBUG, "EAP-LEAP: Failed to derive response");
		ret->ignore = TRUE;
		FUNC10(resp);
		return NULL;
	}
	FUNC7(data->peer_response, rpos, LEAP_RESPONSE_LEN);
	FUNC8(MSG_MSGDUMP, "EAP-LEAP: Response",
		    rpos, LEAP_RESPONSE_LEN);
	FUNC13(resp, identity, identity_len);

	data->state = LEAP_WAIT_SUCCESS;

	return resp;
}