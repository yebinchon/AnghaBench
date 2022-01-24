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
struct eap_sm {int server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_mschapv2_hdr {int /*<<< orphan*/  ms_length; int /*<<< orphan*/  mschapv2_id; int /*<<< orphan*/  op_code; } ;
struct eap_mschapv2_data {int /*<<< orphan*/  auth_challenge; int /*<<< orphan*/  auth_challenge_from_tls; void* state; } ;

/* Variables and functions */
 int CHALLENGE_LEN ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSCHAPV2_OP_CHALLENGE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct eap_mschapv2_hdr* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC8(
	struct eap_sm *sm, struct eap_mschapv2_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_mschapv2_hdr *ms;
	size_t ms_len;

	if (!data->auth_challenge_from_tls &&
	    FUNC2(data->auth_challenge, CHALLENGE_LEN)) {
		FUNC4(MSG_ERROR, "EAP-MSCHAPV2: Failed to get random "
			   "data");
		data->state = FAILURE;
		return NULL;
	}

	ms_len = sizeof(*ms) + 1 + CHALLENGE_LEN + sm->server_id_len;
	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, ms_len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC4(MSG_ERROR, "EAP-MSCHAPV2: Failed to allocate memory"
			   " for request");
		data->state = FAILURE;
		return NULL;
	}

	ms = FUNC5(req, sizeof(*ms));
	ms->op_code = MSCHAPV2_OP_CHALLENGE;
	ms->mschapv2_id = id;
	FUNC0(ms->ms_length, ms_len);

	FUNC7(req, CHALLENGE_LEN);
	if (!data->auth_challenge_from_tls)
		FUNC6(req, data->auth_challenge, CHALLENGE_LEN);
	else
		FUNC5(req, CHALLENGE_LEN);
	FUNC3(MSG_MSGDUMP, "EAP-MSCHAPV2: Challenge",
		    data->auth_challenge, CHALLENGE_LEN);
	FUNC6(req, sm->server_id, sm->server_id_len);

	return req;
}