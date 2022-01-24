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
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct eap_wsc_data {scalar_t__ state; scalar_t__ out_used; int /*<<< orphan*/ * out_buf; int /*<<< orphan*/  out_op_code; int /*<<< orphan*/  wps; struct wpabuf* in_buf; } ;
struct eap_sm {int ClientTimeout; } ;
struct eap_method_ret {scalar_t__ methodState; int /*<<< orphan*/  decision; void* ignore; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 scalar_t__ FAIL ; 
 scalar_t__ MESG ; 
 scalar_t__ METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* TRUE ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 scalar_t__ WAIT_START ; 
 int FUNC0 (int const*) ; 
#define  WPS_CONTINUE 131 
#define  WPS_DONE 130 
#define  WPS_FAILURE 129 
#define  WPS_PENDING 128 
 int WSC_ACK ; 
 int WSC_Done ; 
 int WSC_FLAGS_LF ; 
 int WSC_FLAGS_MF ; 
 int WSC_FRAG_ACK ; 
 int WSC_MSG ; 
 int WSC_NACK ; 
 int WSC_Start ; 
 int FUNC1 (struct wpabuf const*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (struct eap_wsc_data*,struct eap_method_ret*,int) ; 
 scalar_t__ FUNC4 (struct eap_wsc_data*,int const*,int,int) ; 
 struct wpabuf* FUNC5 (struct eap_wsc_data*,struct eap_method_ret*,int,int,int,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_wsc_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int const*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC12(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_wsc_data *data = priv;
	const u8 *start, *pos, *end;
	size_t len;
	u8 op_code, flags, id;
	u16 message_length = 0;
	enum wps_process_res res;
	struct wpabuf tmpbuf;
	struct wpabuf *r;

	pos = FUNC2(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, reqData,
			       &len);
	if (pos == NULL || len < 2) {
		ret->ignore = TRUE;
		return NULL;
	}

	id = FUNC1(reqData);

	start = pos;
	end = start + len;

	op_code = *pos++;
	flags = *pos++;
	if (flags & WSC_FLAGS_LF) {
		if (end - pos < 2) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Message underflow");
			ret->ignore = TRUE;
			return NULL;
		}
		message_length = FUNC0(pos);
		pos += 2;

		if (message_length < end - pos || message_length > 50000) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Invalid Message "
				   "Length");
			ret->ignore = TRUE;
			return NULL;
		}
	}

	FUNC7(MSG_DEBUG, "EAP-WSC: Received packet: Op-Code %d "
		   "Flags 0x%x Message Length %d",
		   op_code, flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (op_code != WSC_FRAG_ACK) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d "
				   "in WAIT_FRAG_ACK state", op_code);
			ret->ignore = TRUE;
			return NULL;
		}
		FUNC7(MSG_DEBUG, "EAP-WSC: Fragment acknowledged");
		FUNC6(data, MESG);
		return FUNC3(data, ret, id);
	}

	if (op_code != WSC_ACK && op_code != WSC_NACK && op_code != WSC_MSG &&
	    op_code != WSC_Done && op_code != WSC_Start) {
		FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d",
			   op_code);
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->state == WAIT_START) {
		if (op_code != WSC_Start) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d "
				   "in WAIT_START state", op_code);
			ret->ignore = TRUE;
			return NULL;
		}
		FUNC7(MSG_DEBUG, "EAP-WSC: Received start");
		FUNC6(data, MESG);
		/* Start message has empty payload, skip processing */
		goto send_msg;
	} else if (op_code == WSC_Start) {
		FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d",
			   op_code);
		ret->ignore = TRUE;
		return NULL;
	}

	if (data->in_buf &&
	    FUNC4(data, pos, end - pos, op_code) < 0) {
		ret->ignore = TRUE;
		return NULL;
	}

	if (flags & WSC_FLAGS_MF) {
		return FUNC5(data, ret, id, flags, op_code,
						message_length, pos,
						end - pos);
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC9(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	res = FUNC11(data->wps, op_code, data->in_buf);
	switch (res) {
	case WPS_DONE:
		FUNC7(MSG_DEBUG, "EAP-WSC: WPS processing completed "
			   "successfully - wait for EAP failure");
		FUNC6(data, FAIL);
		break;
	case WPS_CONTINUE:
		FUNC6(data, MESG);
		break;
	case WPS_FAILURE:
	case WPS_PENDING:
		FUNC7(MSG_DEBUG, "EAP-WSC: WPS processing failed");
		FUNC6(data, FAIL);
		break;
	}

	if (data->in_buf != &tmpbuf)
		FUNC8(data->in_buf);
	data->in_buf = NULL;

send_msg:
	if (data->out_buf == NULL) {
		data->out_buf = FUNC10(data->wps, &data->out_op_code);
		if (data->out_buf == NULL) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Failed to receive "
				   "message from WPS");
			FUNC6(data, FAIL);
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			return NULL;
		}
		data->out_used = 0;
	}

	FUNC6(data, MESG);
	r = FUNC3(data, ret, id);
	if (data->state == FAIL && ret->methodState == METHOD_DONE) {
		/* Use reduced client timeout for WPS to avoid long wait */
		if (sm->ClientTimeout > 2)
			sm->ClientTimeout = 2;
	}
	return r;
}