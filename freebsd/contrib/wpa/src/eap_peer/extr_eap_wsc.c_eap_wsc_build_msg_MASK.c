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
struct eap_wsc_data {scalar_t__ out_used; int fragment_size; int out_op_code; scalar_t__ state; int /*<<< orphan*/ * out_buf; } ;
struct eap_method_ret {int /*<<< orphan*/  methodState; int /*<<< orphan*/  decision; int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MESG ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 int WSC_ACK ; 
 int WSC_Done ; 
 int WSC_FLAGS_LF ; 
 int WSC_FLAGS_MF ; 
 int WSC_NACK ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_wsc_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_wsc_data *data,
					 struct eap_method_ret *ret, u8 id)
{
	struct wpabuf *resp;
	u8 flags;
	size_t send_len, plen;

	ret->ignore = FALSE;
	FUNC2(MSG_DEBUG, "EAP-WSC: Generating Response");
	ret->allowNotifications = TRUE;

	flags = 0;
	send_len = FUNC5(data->out_buf) - data->out_used;
	if (2 + send_len > data->fragment_size) {
		send_len = data->fragment_size - 2;
		flags |= WSC_FLAGS_MF;
		if (data->out_used == 0) {
			flags |= WSC_FLAGS_LF;
			send_len -= 2;
		}
	}
	plen = 2 + send_len;
	if (flags & WSC_FLAGS_LF)
		plen += 2;
	resp = FUNC0(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, plen,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;

	FUNC8(resp, data->out_op_code); /* Op-Code */
	FUNC8(resp, flags); /* Flags */
	if (flags & WSC_FLAGS_LF)
		FUNC6(resp, FUNC5(data->out_buf));

	FUNC7(resp, FUNC4(data->out_buf) + data->out_used,
			send_len);
	data->out_used += send_len;

	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;

	if (data->out_used == FUNC5(data->out_buf)) {
		FUNC2(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
			   "(message sent completely)",
			   (unsigned long) send_len);
		FUNC3(data->out_buf);
		data->out_buf = NULL;
		data->out_used = 0;
		if ((data->state == FAIL && data->out_op_code == WSC_ACK) ||
		    data->out_op_code == WSC_NACK ||
		    data->out_op_code == WSC_Done) {
			FUNC1(data, FAIL);
			ret->methodState = METHOD_DONE;
		} else
			FUNC1(data, MESG);
	} else {
		FUNC2(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
			   "(%lu more to send)", (unsigned long) send_len,
			   (unsigned long) FUNC5(data->out_buf) -
			   data->out_used);
		FUNC1(data, WAIT_FRAG_ACK);
	}

	return resp;
}