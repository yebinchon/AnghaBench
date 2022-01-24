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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ out_used; int fragment_size; int /*<<< orphan*/  state; int /*<<< orphan*/ * out_buf; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ; 
 int EAP_TNC_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAIT_FRAG_ACK ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct eap_tnc_data *data,
					 struct eap_method_ret *ret, u8 id)
{
	struct wpabuf *resp;
	u8 flags;
	size_t send_len, plen;

	ret->ignore = FALSE;
	FUNC1(MSG_DEBUG, "EAP-TNC: Generating Response");
	ret->allowNotifications = TRUE;

	flags = EAP_TNC_VERSION;
	send_len = FUNC4(data->out_buf) - data->out_used;
	if (1 + send_len > data->fragment_size) {
		send_len = data->fragment_size - 1;
		flags |= EAP_TNC_FLAGS_MORE_FRAGMENTS;
		if (data->out_used == 0) {
			flags |= EAP_TNC_FLAGS_LENGTH_INCLUDED;
			send_len -= 4;
		}
	}

	plen = 1 + send_len;
	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
		plen += 4;
	resp = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TNC, plen,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;

	FUNC7(resp, flags); /* Flags */
	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
		FUNC5(resp, FUNC4(data->out_buf));

	FUNC6(resp, FUNC3(data->out_buf) + data->out_used,
			send_len);
	data->out_used += send_len;

	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;

	if (data->out_used == FUNC4(data->out_buf)) {
		FUNC1(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
			   "(message sent completely)",
			   (unsigned long) send_len);
		FUNC2(data->out_buf);
		data->out_buf = NULL;
		data->out_used = 0;
	} else {
		FUNC1(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
			   "(%lu more to send)", (unsigned long) send_len,
			   (unsigned long) FUNC4(data->out_buf) -
			   data->out_used);
		data->state = WAIT_FRAG_ACK;
	}

	return resp;
}