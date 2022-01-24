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
struct eap_mschapv2_data {int /*<<< orphan*/  resp_mschapv2_id; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSCHAPV2_OP_FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct eap_mschapv2_hdr* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC7(
	struct eap_sm *sm, struct eap_mschapv2_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_mschapv2_hdr *ms;
	char *message = "E=691 R=0 C=00000000000000000000000000000000 V=3 "
		"M=FAILED";
	size_t ms_len;

	ms_len = sizeof(*ms) + FUNC2(message);
	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, ms_len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC4(MSG_ERROR, "EAP-MSCHAPV2: Failed to allocate memory"
			   " for request");
		data->state = FAILURE;
		return NULL;
	}

	ms = FUNC5(req, sizeof(*ms));
	ms->op_code = MSCHAPV2_OP_FAILURE;
	ms->mschapv2_id = data->resp_mschapv2_id;
	FUNC0(ms->ms_length, ms_len);

	FUNC6(req, message, FUNC2(message));

	FUNC3(MSG_MSGDUMP, "EAP-MSCHAPV2: Failure Request Message",
			  (u8 *) message, FUNC2(message));

	return req;
}