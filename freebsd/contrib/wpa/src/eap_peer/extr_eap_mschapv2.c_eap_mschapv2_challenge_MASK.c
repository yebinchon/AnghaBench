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
struct eap_mschapv2_hdr {int /*<<< orphan*/  mschapv2_id; } ;
struct eap_mschapv2_data {int /*<<< orphan*/ * passwd_change_challenge; scalar_t__ passwd_change_challenge_valid; } ;
struct eap_method_ret {void* allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 size_t MSCHAPV2_CHAL_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,struct eap_mschapv2_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC5(
	struct eap_sm *sm, struct eap_mschapv2_data *data,
	struct eap_method_ret *ret, const struct eap_mschapv2_hdr *req,
	size_t req_len, u8 id)
{
	size_t len, challenge_len;
	const u8 *pos, *challenge;

	if (FUNC0(sm, &len) == NULL ||
	    FUNC1(sm, &len) == NULL)
		return NULL;

	FUNC4(MSG_DEBUG, "EAP-MSCHAPV2: Received challenge");
	if (req_len < sizeof(*req) + 1) {
		FUNC4(MSG_INFO, "EAP-MSCHAPV2: Too short challenge data "
			   "(len %lu)", (unsigned long) req_len);
		ret->ignore = TRUE;
		return NULL;
	}
	pos = (const u8 *) (req + 1);
	challenge_len = *pos++;
	len = req_len - sizeof(*req) - 1;
	if (challenge_len != MSCHAPV2_CHAL_LEN) {
		FUNC4(MSG_INFO, "EAP-MSCHAPV2: Invalid challenge length "
			   "%lu", (unsigned long) challenge_len);
		ret->ignore = TRUE;
		return NULL;
	}

	if (len < challenge_len) {
		FUNC4(MSG_INFO, "EAP-MSCHAPV2: Too short challenge"
			   " packet: len=%lu challenge_len=%lu",
			   (unsigned long) len, (unsigned long) challenge_len);
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->passwd_change_challenge_valid) {
		FUNC4(MSG_DEBUG, "EAP-MSCHAPV2: Using challenge from the "
			   "failure message");
		challenge = data->passwd_change_challenge;
	} else
		challenge = pos;
	pos += challenge_len;
	len -= challenge_len;
	FUNC3(MSG_DEBUG, "EAP-MSCHAPV2: Authentication Servername",
		    pos, len);

	ret->ignore = FALSE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = TRUE;

	return FUNC2(sm, data, id, req->mschapv2_id,
					    challenge);
}