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
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* ignore; } ;
struct eap_leap_data {scalar_t__ state; int /*<<< orphan*/  ap_challenge; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_LEAP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ LEAP_CHALLENGE_LEN ; 
 scalar_t__ LEAP_VERSION ; 
 scalar_t__ LEAP_WAIT_RESPONSE ; 
 scalar_t__ LEAP_WAIT_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf const*) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC8 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC11(struct eap_sm *sm, void *priv,
						struct eap_method_ret *ret,
						const struct wpabuf *reqData)
{
	struct eap_leap_data *data = priv;
	struct wpabuf *resp;
	u8 *pos;
	const u8 *identity;
	size_t identity_len;

	FUNC6(MSG_DEBUG, "EAP-LEAP: Processing EAP-Success");

	identity = FUNC0(sm, &identity_len);
	if (identity == NULL)
		return NULL;

	if (data->state != LEAP_WAIT_SUCCESS) {
		FUNC6(MSG_INFO, "EAP-LEAP: EAP-Success received in "
			   "unexpected state (%d) - ignored", data->state);
		ret->ignore = TRUE;
		return NULL;
	}

	resp = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_LEAP,
			     3 + LEAP_CHALLENGE_LEN + identity_len,
			     EAP_CODE_REQUEST, FUNC1(reqData));
	if (resp == NULL)
		return NULL;
	FUNC10(resp, LEAP_VERSION);
	FUNC10(resp, 0); /* unused */
	FUNC10(resp, LEAP_CHALLENGE_LEN);
	pos = FUNC8(resp, LEAP_CHALLENGE_LEN);
	if (FUNC4(pos, LEAP_CHALLENGE_LEN)) {
		FUNC6(MSG_WARNING, "EAP-LEAP: Failed to read random data "
			   "for challenge");
		FUNC7(resp);
		ret->ignore = TRUE;
		return NULL;
	}
	FUNC3(data->ap_challenge, pos, LEAP_CHALLENGE_LEN);
	FUNC5(MSG_MSGDUMP, "EAP-LEAP: Challenge to AP/AS", pos,
		    LEAP_CHALLENGE_LEN);
	FUNC9(resp, identity, identity_len);

	data->state = LEAP_WAIT_RESPONSE;

	return resp;
}