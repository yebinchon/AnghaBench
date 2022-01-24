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
struct eap_wsc_data {scalar_t__ state; struct wpabuf* in_buf; int /*<<< orphan*/  wps; scalar_t__ ext_reg_timeout; } ;
struct eap_sm {int /*<<< orphan*/  method_pending; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  FRAG_ACK ; 
 int /*<<< orphan*/  MESG ; 
 int /*<<< orphan*/  METHOD_PENDING_WAIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WAIT_FRAG_ACK ; 
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
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  eap_wsc_ext_reg_timeout ; 
 scalar_t__ FUNC2 (struct eap_wsc_data*,int const*,int,int) ; 
 scalar_t__ FUNC3 (struct eap_wsc_data*,int,int,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_wsc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct eap_sm*,struct eap_wsc_data*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_sm*,struct eap_wsc_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,struct wpabuf*) ; 

__attribute__((used)) static void FUNC11(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_wsc_data *data = priv;
	const u8 *start, *pos, *end;
	size_t len;
	u8 op_code, flags;
	u16 message_length = 0;
	enum wps_process_res res;
	struct wpabuf tmpbuf;

	FUNC5(eap_wsc_ext_reg_timeout, sm, data);
	if (data->ext_reg_timeout) {
		FUNC4(data, FAIL);
		return;
	}

	pos = FUNC1(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC,
			       respData, &len);
	if (pos == NULL || len < 2)
		return; /* Should not happen; message already verified */

	start = pos;
	end = start + len;

	op_code = *pos++;
	flags = *pos++;
	if (flags & WSC_FLAGS_LF) {
		if (end - pos < 2) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Message underflow");
			return;
		}
		message_length = FUNC0(pos);
		pos += 2;

		if (message_length < end - pos || message_length > 50000) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Invalid Message "
				   "Length");
			return;
		}
	}

	FUNC7(MSG_DEBUG, "EAP-WSC: Received packet: Op-Code %d "
		   "Flags 0x%x Message Length %d",
		   op_code, flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (op_code != WSC_FRAG_ACK) {
			FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d "
				   "in WAIT_FRAG_ACK state", op_code);
			FUNC4(data, FAIL);
			return;
		}
		FUNC7(MSG_DEBUG, "EAP-WSC: Fragment acknowledged");
		FUNC4(data, MESG);
		return;
	}

	if (op_code != WSC_ACK && op_code != WSC_NACK && op_code != WSC_MSG &&
	    op_code != WSC_Done) {
		FUNC7(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d",
			   op_code);
		FUNC4(data, FAIL);
		return;
	}

	if (data->in_buf &&
	    FUNC2(data, pos, end - pos, op_code) < 0) {
		FUNC4(data, FAIL);
		return;
	}

	if (flags & WSC_FLAGS_MF) {
		if (FUNC3(data, flags, op_code,
					     message_length, pos, end - pos) <
		    0)
			FUNC4(data, FAIL);
		else
			FUNC4(data, FRAG_ACK);
		return;
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC9(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	res = FUNC10(data->wps, op_code, data->in_buf);
	switch (res) {
	case WPS_DONE:
		FUNC7(MSG_DEBUG, "EAP-WSC: WPS processing completed "
			   "successfully - report EAP failure");
		FUNC4(data, FAIL);
		break;
	case WPS_CONTINUE:
		FUNC4(data, MESG);
		break;
	case WPS_FAILURE:
		FUNC7(MSG_DEBUG, "EAP-WSC: WPS processing failed");
		FUNC4(data, FAIL);
		break;
	case WPS_PENDING:
		FUNC4(data, MESG);
		sm->method_pending = METHOD_PENDING_WAIT;
		FUNC5(eap_wsc_ext_reg_timeout, sm, data);
		FUNC6(5, 0, eap_wsc_ext_reg_timeout,
				       sm, data);
		break;
	}

	if (data->in_buf != &tmpbuf)
		FUNC8(data->in_buf);
	data->in_buf = NULL;
}