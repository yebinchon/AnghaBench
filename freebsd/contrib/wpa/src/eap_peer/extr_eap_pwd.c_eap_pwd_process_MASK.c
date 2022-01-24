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
struct eap_sm {int dummy; } ;
struct eap_pwd_data {size_t out_frag_pos; scalar_t__ mtu; scalar_t__ state; size_t in_frag_pos; struct wpabuf* outbuf; struct wpabuf* inbuf; } ;
struct eap_method_ret {void* decision; void* methodState; void* ignore; void* allowNotifications; } ;

/* Variables and functions */
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ EAP_PWD_HDR_SIZE ; 
#define  EAP_PWD_OPCODE_COMMIT_EXCH 130 
#define  EAP_PWD_OPCODE_CONFIRM_EXCH 129 
#define  EAP_PWD_OPCODE_ID_EXCH 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  EAP_TYPE_PWD ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FALSE ; 
 void* METHOD_DONE ; 
 void* METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ SUCCESS_ON_FRAG_COMPLETION ; 
 void* TRUE ; 
 int FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*) ; 
 int* FUNC16 (struct wpabuf*) ; 
 size_t FUNC17 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct wpabuf*,int) ; 
 size_t FUNC21 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf *
FUNC22(struct eap_sm *sm, void *priv, struct eap_method_ret *ret,
		const struct wpabuf *reqData)
{
	struct eap_pwd_data *data = priv;
	struct wpabuf *resp = NULL;
	const u8 *pos, *buf;
	size_t len;
	u16 tot_len = 0;
	u8 lm_exch;

	pos = FUNC7(EAP_VENDOR_IETF, EAP_TYPE_PWD, reqData, &len);
	if ((pos == NULL) || (len < 1)) {
		FUNC13(MSG_DEBUG, "EAP-pwd: Got a frame but pos is %s and "
			   "len is %d",
			   pos == NULL ? "NULL" : "not NULL", (int) len);
		ret->ignore = TRUE;
		return NULL;
	}

	ret->ignore = FALSE;
	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = FALSE;

	lm_exch = *pos;
	pos++;                  /* skip over the bits and the exch */
	len--;

	/*
	 * we're fragmenting so send out the next fragment
	 */
	if (data->out_frag_pos) {
		/*
		 * this should be an ACK
		 */
		if (len)
			FUNC13(MSG_INFO, "Bad Response! Fragmenting but "
				   "not an ACK");

		FUNC13(MSG_DEBUG, "EAP-pwd: Got an ACK for a fragment");
		/*
		 * check if there are going to be more fragments
		 */
		len = FUNC17(data->outbuf) - data->out_frag_pos;
		if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
			len = data->mtu - EAP_PWD_HDR_SIZE;
			FUNC4(lm_exch);
		}
		resp = FUNC8(EAP_VENDOR_IETF, EAP_TYPE_PWD,
				     EAP_PWD_HDR_SIZE + len,
				     EAP_CODE_RESPONSE, FUNC6(reqData));
		if (resp == NULL) {
			FUNC13(MSG_INFO, "Unable to allocate memory for "
				   "next fragment!");
			return NULL;
		}
		FUNC20(resp, lm_exch);
		buf = FUNC16(data->outbuf);
		FUNC19(resp, buf + data->out_frag_pos, len);
		data->out_frag_pos += len;
		/*
		 * this is the last fragment so get rid of the out buffer
		 */
		if (data->out_frag_pos >= FUNC17(data->outbuf)) {
			FUNC15(data->outbuf);
			data->outbuf = NULL;
			data->out_frag_pos = 0;
		}
		FUNC13(MSG_DEBUG, "EAP-pwd: Send %s fragment of %d bytes",
			   data->out_frag_pos == 0 ? "last" : "next",
			   (int) len);
		if (data->state == SUCCESS_ON_FRAG_COMPLETION) {
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_UNCOND_SUCC;
			FUNC12(data, SUCCESS);
		}
		return resp;
	}

	/*
	 * see if this is a fragment that needs buffering
	 *
	 * if it's the first fragment there'll be a length field
	 */
	if (FUNC1(lm_exch)) {
		if (len < 2) {
			FUNC13(MSG_DEBUG,
				   "EAP-pwd: Frame too short to contain Total-Length field");
			ret->ignore = TRUE;
			return NULL;
		}
		tot_len = FUNC5(pos);
		FUNC13(MSG_DEBUG, "EAP-pwd: Incoming fragments whose "
			   "total length = %d", tot_len);
		if (tot_len > 15000)
			return NULL;
		if (data->inbuf) {
			FUNC13(MSG_DEBUG,
				   "EAP-pwd: Unexpected new fragment start when previous fragment is still in use");
			ret->ignore = TRUE;
			return NULL;
		}
		data->inbuf = FUNC14(tot_len);
		if (data->inbuf == NULL) {
			FUNC13(MSG_INFO, "Out of memory to buffer "
				   "fragments!");
			return NULL;
		}
		data->in_frag_pos = 0;
		pos += sizeof(u16);
		len -= sizeof(u16);
	}
	/*
	 * buffer and ACK the fragment
	 */
	if (FUNC2(lm_exch) || data->in_frag_pos) {
		if (!data->inbuf) {
			FUNC13(MSG_DEBUG,
				   "EAP-pwd: No buffer for reassembly");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			return NULL;
		}
		data->in_frag_pos += len;
		if (data->in_frag_pos > FUNC21(data->inbuf)) {
			FUNC13(MSG_INFO, "EAP-pwd: Buffer overflow attack "
				   "detected (%d vs. %d)!",
				   (int) data->in_frag_pos,
				   (int) FUNC17(data->inbuf));
			FUNC15(data->inbuf);
			data->inbuf = NULL;
			data->in_frag_pos = 0;
			return NULL;
		}
		FUNC19(data->inbuf, pos, len);
	}
	if (FUNC2(lm_exch)) {
		resp = FUNC8(EAP_VENDOR_IETF, EAP_TYPE_PWD,
				     EAP_PWD_HDR_SIZE,
				     EAP_CODE_RESPONSE, FUNC6(reqData));
		if (resp != NULL)
			FUNC20(resp, (FUNC0(lm_exch)));
		FUNC13(MSG_DEBUG, "EAP-pwd: ACKing a %d byte fragment",
			   (int) len);
		return resp;
	}
	/*
	 * we're buffering and this is the last fragment
	 */
	if (data->in_frag_pos && data->inbuf) {
		FUNC13(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
			   (int) len);
		pos = FUNC16(data->inbuf);
		len = data->in_frag_pos;
	}
	FUNC13(MSG_DEBUG, "EAP-pwd: processing frame: exch %d, len %d",
		   FUNC0(lm_exch), (int) len);

	switch (FUNC0(lm_exch)) {
	case EAP_PWD_OPCODE_ID_EXCH:
		FUNC11(sm, data, ret, reqData,
					    pos, len);
		break;
	case EAP_PWD_OPCODE_COMMIT_EXCH:
		FUNC9(sm, data, ret, reqData,
						pos, len);
		break;
	case EAP_PWD_OPCODE_CONFIRM_EXCH:
		FUNC10(sm, data, ret, reqData,
						 pos, len);
		break;
	default:
		FUNC13(MSG_INFO, "EAP-pwd: Ignoring message with unknown "
			   "opcode %d", lm_exch);
		break;
	}
	/*
	 * if we buffered the just processed input now's the time to free it
	 */
	if (data->in_frag_pos) {
		FUNC15(data->inbuf);
		data->inbuf = NULL;
		data->in_frag_pos = 0;
	}

	if (data->outbuf == NULL) {
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return NULL;        /* generic failure */
	}

	/*
	 * we have output! Do we need to fragment it?
	 */
	lm_exch = FUNC0(lm_exch);
	len = FUNC17(data->outbuf);
	if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
		resp = FUNC8(EAP_VENDOR_IETF, EAP_TYPE_PWD, data->mtu,
				     EAP_CODE_RESPONSE, FUNC6(reqData));
		/*
		 * if so it's the first so include a length field
		 */
		FUNC3(lm_exch);
		FUNC4(lm_exch);
		tot_len = len;
		/*
		 * keep the packet at the MTU
		 */
		len = data->mtu - EAP_PWD_HDR_SIZE - sizeof(u16);
		FUNC13(MSG_DEBUG, "EAP-pwd: Fragmenting output, total "
			   "length = %d", tot_len);
	} else {
		resp = FUNC8(EAP_VENDOR_IETF, EAP_TYPE_PWD,
				     EAP_PWD_HDR_SIZE + len,
				     EAP_CODE_RESPONSE, FUNC6(reqData));
	}
	if (resp == NULL)
		return NULL;

	FUNC20(resp, lm_exch);
	if (FUNC1(lm_exch)) {
		FUNC18(resp, tot_len);
		data->out_frag_pos += len;
	}
	buf = FUNC16(data->outbuf);
	FUNC19(resp, buf, len);
	/*
	 * if we're not fragmenting then there's no need to carry this around
	 */
	if (data->out_frag_pos == 0) {
		FUNC15(data->outbuf);
		data->outbuf = NULL;
		data->out_frag_pos = 0;
		if (data->state == SUCCESS_ON_FRAG_COMPLETION) {
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_UNCOND_SUCC;
			FUNC12(data, SUCCESS);
		}
	}

	return resp;
}