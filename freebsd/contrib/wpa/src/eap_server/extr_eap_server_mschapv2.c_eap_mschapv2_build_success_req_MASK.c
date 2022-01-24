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
struct eap_mschapv2_hdr {int /*<<< orphan*/  ms_length; int /*<<< orphan*/  mschapv2_id; int /*<<< orphan*/  op_code; } ;
struct eap_mschapv2_data {int /*<<< orphan*/  auth_response; int /*<<< orphan*/  resp_mschapv2_id; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSCHAPV2_OP_SUCCESS ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_mschapv2_hdr*,int,int /*<<< orphan*/ ,int) ; 
 struct eap_mschapv2_hdr* FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,char) ; 

__attribute__((used)) static struct wpabuf * FUNC9(
	struct eap_sm *sm, struct eap_mschapv2_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_mschapv2_hdr *ms;
	u8 *msg;
	char *message = "OK";
	size_t ms_len;

	ms_len = sizeof(*ms) + 2 + 2 * sizeof(data->auth_response) + 1 + 2 +
		FUNC2(message);
	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, ms_len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC4(MSG_ERROR, "EAP-MSCHAPV2: Failed to allocate memory"
			   " for request");
		data->state = FAILURE;
		return NULL;
	}

	ms = FUNC6(req, sizeof(*ms));
	ms->op_code = MSCHAPV2_OP_SUCCESS;
	ms->mschapv2_id = data->resp_mschapv2_id;
	FUNC0(ms->ms_length, ms_len);
	msg = (u8 *) (ms + 1);

	FUNC8(req, 'S');
	FUNC8(req, '=');
	FUNC5(
		FUNC6(req, sizeof(data->auth_response) * 2),
		sizeof(data->auth_response) * 2 + 1,
		data->auth_response, sizeof(data->auth_response));
	FUNC8(req, ' ');
	FUNC8(req, 'M');
	FUNC8(req, '=');
	FUNC7(req, message, FUNC2(message));

	FUNC3(MSG_MSGDUMP, "EAP-MSCHAPV2: Success Request Message",
			  msg, ms_len - sizeof(*ms));

	return req;
}