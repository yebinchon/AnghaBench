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
typedef  int u32 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ state; struct wpabuf* in_buf; struct wpabuf* out_buf; int /*<<< orphan*/  tncc; } ;
struct eap_sm {int /*<<< orphan*/  msg_ctx; } ;
struct eap_method_ret {void* allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* ignore; } ;
typedef  enum tncc_process_res { ____Placeholder_tncc_process_res } tncc_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ; 
 int EAP_TNC_FLAGS_START ; 
 int EAP_TNC_VERSION ; 
 int EAP_TNC_VERSION_MASK ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* PROC_MSG ; 
#define  TNCCS_PROCESS_ERROR 133 
#define  TNCCS_PROCESS_OK_NO_RECOMMENDATION 132 
#define  TNCCS_RECOMMENDATION_ALLOW 131 
#define  TNCCS_RECOMMENDATION_ERROR 130 
#define  TNCCS_RECOMMENDATION_ISOLATE 129 
#define  TNCCS_RECOMMENDATION_NONE 128 
 void* TRUE ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 scalar_t__ WAIT_START ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (struct wpabuf const*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct wpabuf* FUNC4 (struct eap_tnc_data*,struct eap_method_ret*,int) ; 
 scalar_t__ FUNC5 (struct eap_tnc_data*,int const*,int) ; 
 struct wpabuf* FUNC6 (struct eap_tnc_data*,struct eap_method_ret*,int,int,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (char*) ; 
 int* FUNC9 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC21 (struct wpabuf*) ; 
 int* FUNC22 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct wpabuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC24 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct wpabuf*,int const*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC26(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_tnc_data *data = priv;
	struct wpabuf *resp;
	const u8 *pos, *end;
	u8 *rpos, *rpos1;
	size_t len, rlen;
	size_t imc_len;
	char *start_buf, *end_buf;
	size_t start_len, end_len;
	int tncs_done = 0;
	u8 flags, id;
	u32 message_length = 0;
	struct wpabuf tmpbuf;

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_TNC, reqData, &len);
	if (pos == NULL) {
		FUNC17(MSG_INFO, "EAP-TNC: Invalid frame (pos=%p len=%lu)",
			   pos, (unsigned long) len);
		ret->ignore = TRUE;
		return NULL;
	}

	id = FUNC1(reqData);

	end = pos + len;

	if (len == 0)
		flags = 0; /* fragment ack */
	else
		flags = *pos++;

	if (len > 0 && (flags & EAP_TNC_VERSION_MASK) != EAP_TNC_VERSION) {
		FUNC17(MSG_DEBUG, "EAP-TNC: Unsupported version %d",
			   flags & EAP_TNC_VERSION_MASK);
		ret->ignore = TRUE;
		return NULL;
	}

	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED) {
		if (end - pos < 4) {
			FUNC17(MSG_DEBUG, "EAP-TNC: Message underflow");
			ret->ignore = TRUE;
			return NULL;
		}
		message_length = FUNC0(pos);
		pos += 4;

		if (message_length < (u32) (end - pos) ||
		    message_length > 75000) {
			FUNC17(MSG_DEBUG, "EAP-TNC: Invalid Message "
				   "Length (%d; %ld remaining in this msg)",
				   message_length, (long) (end - pos));
			ret->ignore = TRUE;
			return NULL;
		}
	}

	FUNC17(MSG_DEBUG, "EAP-TNC: Received packet: Flags 0x%x "
		   "Message Length %u", flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (len > 1) {
			FUNC17(MSG_DEBUG, "EAP-TNC: Unexpected payload in "
				   "WAIT_FRAG_ACK state");
			ret->ignore = TRUE;
			return NULL;
		}
		FUNC17(MSG_DEBUG, "EAP-TNC: Fragment acknowledged");
		data->state = PROC_MSG;
		return FUNC4(data, ret, id);
	}

	if (data->in_buf && FUNC5(data, pos, end - pos) < 0) {
		ret->ignore = TRUE;
		return NULL;
	}
		
	if (flags & EAP_TNC_FLAGS_MORE_FRAGMENTS) {
		return FUNC6(data, ret, id, flags,
						message_length, pos,
						end - pos);
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC25(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	if (data->state == WAIT_START) {
		if (!(flags & EAP_TNC_FLAGS_START)) {
			FUNC17(MSG_DEBUG, "EAP-TNC: Server did not use "
				   "start flag in the first message");
			ret->ignore = TRUE;
			goto fail;
		}

		FUNC12(data->tncc);

		data->state = PROC_MSG;
	} else {
		enum tncc_process_res res;

		if (flags & EAP_TNC_FLAGS_START) {
			FUNC17(MSG_DEBUG, "EAP-TNC: Server used start "
				   "flag again");
			ret->ignore = TRUE;
			goto fail;
		}

		res = FUNC13(data->tncc,
					    FUNC20(data->in_buf),
					    FUNC21(data->in_buf));
		switch (res) {
		case TNCCS_PROCESS_ERROR:
			ret->ignore = TRUE;
			goto fail;
		case TNCCS_PROCESS_OK_NO_RECOMMENDATION:
		case TNCCS_RECOMMENDATION_ERROR:
			FUNC17(MSG_DEBUG, "EAP-TNC: No "
				   "TNCCS-Recommendation received");
			break;
		case TNCCS_RECOMMENDATION_ALLOW:
			FUNC16(sm->msg_ctx, MSG_INFO,
				"TNC: Recommendation = allow");
			tncs_done = 1;
			break;
		case TNCCS_RECOMMENDATION_NONE:
			FUNC16(sm->msg_ctx, MSG_INFO,
				"TNC: Recommendation = none");
			tncs_done = 1;
			break;
		case TNCCS_RECOMMENDATION_ISOLATE:
			FUNC16(sm->msg_ctx, MSG_INFO,
				"TNC: Recommendation = isolate");
			tncs_done = 1;
			break;
		}
	}

	if (data->in_buf != &tmpbuf)
		FUNC19(data->in_buf);
	data->in_buf = NULL;

	ret->ignore = FALSE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_UNCOND_SUCC;
	ret->allowNotifications = TRUE;

	if (tncs_done) {
		resp = FUNC3(EAP_VENDOR_IETF, EAP_TYPE_TNC, 1,
				     EAP_CODE_RESPONSE, FUNC1(reqData));
		if (resp == NULL)
			return NULL;

		FUNC24(resp, EAP_TNC_VERSION);
		FUNC17(MSG_DEBUG, "EAP-TNC: TNCS done - reply with an "
			   "empty ACK message");
		return resp;
	}

	imc_len = FUNC14(data->tncc);

	start_buf = FUNC11(data->tncc);
	if (start_buf == NULL)
		return NULL;
	start_len = FUNC8(start_buf);
	end_buf = FUNC10();
	if (end_buf == NULL) {
		FUNC7(start_buf);
		return NULL;
	}
	end_len = FUNC8(end_buf);

	rlen = start_len + imc_len + end_len;
	resp = FUNC18(rlen);
	if (resp == NULL) {
		FUNC7(start_buf);
		FUNC7(end_buf);
		return NULL;
	}

	FUNC23(resp, start_buf, start_len);
	FUNC7(start_buf);

	rpos1 = FUNC22(resp, 0);
	rpos = FUNC9(data->tncc, rpos1);
	FUNC22(resp, rpos - rpos1);

	FUNC23(resp, end_buf, end_len);
	FUNC7(end_buf);

	FUNC15(MSG_MSGDUMP, "EAP-TNC: Response",
			  FUNC20(resp), FUNC21(resp));

	data->out_buf = resp;
	data->state = PROC_MSG;
	return FUNC4(data, ret, id);

fail:
	if (data->in_buf == &tmpbuf)
		data->in_buf = NULL;
	return NULL;
}