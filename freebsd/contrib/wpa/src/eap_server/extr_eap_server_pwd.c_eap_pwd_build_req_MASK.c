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
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int state; scalar_t__ out_frag_pos; scalar_t__ mtu; struct wpabuf* outbuf; scalar_t__ in_frag_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EAP_PWD_HDR_SIZE ; 
 int /*<<< orphan*/  EAP_PWD_OPCODE_COMMIT_EXCH ; 
 int /*<<< orphan*/  EAP_PWD_OPCODE_CONFIRM_EXCH ; 
 int /*<<< orphan*/  EAP_PWD_OPCODE_ID_EXCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAP_TYPE_PWD ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  PWD_Commit_Req 130 
#define  PWD_Confirm_Req 129 
#define  PWD_ID_Req 128 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_pwd_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC10 (struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf *
FUNC15(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_pwd_data *data = priv;
	struct wpabuf *req;
	u8 lm_exch;
	const u8 *buf;
	u16 totlen = 0;
	size_t len;

	/*
	 * if we're buffering response fragments then just ACK
	 */
	if (data->in_frag_pos) {
		FUNC8(MSG_DEBUG, "EAP-pwd: ACKing a fragment!!");
		req = FUNC3(EAP_VENDOR_IETF, EAP_TYPE_PWD,
				    EAP_PWD_HDR_SIZE, EAP_CODE_REQUEST, id);
		if (req == NULL) {
			FUNC7(data, FAILURE);
			return NULL;
		}
		switch (data->state) {
		case PWD_ID_Req:
			FUNC14(req, EAP_PWD_OPCODE_ID_EXCH);
			break;
		case PWD_Commit_Req:
			FUNC14(req, EAP_PWD_OPCODE_COMMIT_EXCH);
			break;
		case PWD_Confirm_Req:
			FUNC14(req, EAP_PWD_OPCODE_CONFIRM_EXCH);
			break;
		default:
			FUNC7(data, FAILURE);   /* just to be sure */
			FUNC9(req);
			return NULL;
		}
		return req;
	}

	/*
	 * build the data portion of a request
	 */
	switch (data->state) {
	case PWD_ID_Req:
		FUNC6(sm, data, id);
		lm_exch = EAP_PWD_OPCODE_ID_EXCH;
		break;
	case PWD_Commit_Req:
		FUNC4(sm, data, id);
		lm_exch = EAP_PWD_OPCODE_COMMIT_EXCH;
		break;
	case PWD_Confirm_Req:
		FUNC5(sm, data, id);
		lm_exch = EAP_PWD_OPCODE_CONFIRM_EXCH;
		break;
	default:
		FUNC8(MSG_INFO, "EAP-pwd: Unknown state %d in build_req",
			   data->state);
		FUNC7(data, FAILURE);
		lm_exch = 0;    /* hush now, sweet compiler */
		break;
	}

	if (data->state == FAILURE)
		return NULL;

	/*
	 * determine whether that data needs to be fragmented
	 */
	len = FUNC11(data->outbuf) - data->out_frag_pos;
	if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
		len = data->mtu - EAP_PWD_HDR_SIZE;
		FUNC2(lm_exch);
		/*
		 * if this is the first fragment, need to set the M bit
		 * and add the total length to the eap_pwd_hdr
		 */
		if (data->out_frag_pos == 0) {
			FUNC1(lm_exch);
			totlen = FUNC11(data->outbuf) +
				EAP_PWD_HDR_SIZE + sizeof(u16);
			len -= sizeof(u16);
			FUNC8(MSG_DEBUG, "EAP-pwd: Fragmenting output, "
				   "total length = %d", totlen);
		}
		FUNC8(MSG_DEBUG, "EAP-pwd: Send a %d byte fragment",
			   (int) len);
	}

	/*
	 * alloc an eap request and populate it with the data
	 */
	req = FUNC3(EAP_VENDOR_IETF, EAP_TYPE_PWD,
			    EAP_PWD_HDR_SIZE + len +
			    (totlen ? sizeof(u16) : 0),
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC7(data, FAILURE);
		return NULL;
	}

	FUNC14(req, lm_exch);
	if (FUNC0(lm_exch))
		FUNC12(req, totlen);

	buf = FUNC10(data->outbuf);
	FUNC13(req, buf + data->out_frag_pos, len);
	data->out_frag_pos += len;
	/*
	 * either not fragged or last fragment, either way free up the data
	 */
	if (data->out_frag_pos >= FUNC11(data->outbuf)) {
		FUNC9(data->outbuf);
		data->outbuf = NULL;
		data->out_frag_pos = 0;
	}

	return req;
}