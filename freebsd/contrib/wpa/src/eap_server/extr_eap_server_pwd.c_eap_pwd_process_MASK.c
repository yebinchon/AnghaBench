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
struct eap_pwd_data {size_t in_frag_pos; int /*<<< orphan*/ * inbuf; scalar_t__ out_frag_pos; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  EAP_PWD_OPCODE_COMMIT_EXCH 130 
#define  EAP_PWD_OPCODE_CONFIRM_EXCH 129 
#define  EAP_PWD_OPCODE_ID_EXCH 128 
 int /*<<< orphan*/  EAP_TYPE_PWD ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sm*,struct eap_pwd_data*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_pwd_data *data = priv;
	const u8 *pos;
	size_t len;
	u8 lm_exch;
	u16 tot_len;

	pos = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_PWD, respData, &len);
	if ((pos == NULL) || (len < 1)) {
		FUNC9(MSG_INFO, "Bad EAP header! pos %s and len = %d",
			   (pos == NULL) ? "is NULL" : "is not NULL",
			   (int) len);
		return;
	}

	lm_exch = *pos;
	pos++;            /* skip over the bits and the exch */
	len--;

	/*
	 * if we're fragmenting then this should be an ACK with no data,
	 * just return and continue fragmenting in the "build" section above
	 */
	if (data->out_frag_pos) {
		if (len > 1)
			FUNC9(MSG_INFO, "EAP-pwd: Bad response! "
				   "Fragmenting but not an ACK");
		else
			FUNC9(MSG_DEBUG, "EAP-pwd: received ACK from "
				   "peer");
		return;
	}
	/*
	 * if we're receiving fragmented packets then we need to buffer...
	 *
	 * the first fragment has a total length
	 */
	if (FUNC1(lm_exch)) {
		if (len < 2) {
			FUNC9(MSG_DEBUG,
				   "EAP-pwd: Frame too short to contain Total-Length field");
			return;
		}
		tot_len = FUNC3(pos);
		FUNC9(MSG_DEBUG, "EAP-pwd: Incoming fragments, total "
			   "length = %d", tot_len);
		if (tot_len > 15000)
			return;
		if (data->inbuf) {
			FUNC9(MSG_DEBUG,
				   "EAP-pwd: Unexpected new fragment start when previous fragment is still in use");
			return;
		}
		data->inbuf = FUNC10(tot_len);
		if (data->inbuf == NULL) {
			FUNC9(MSG_INFO, "EAP-pwd: Out of memory to "
				   "buffer fragments!");
			return;
		}
		data->in_frag_pos = 0;
		pos += sizeof(u16);
		len -= sizeof(u16);
	}
	/*
	 * the first and all intermediate fragments have the M bit set
	 */
	if (FUNC2(lm_exch) || data->in_frag_pos) {
		if (!data->inbuf) {
			FUNC9(MSG_DEBUG,
				   "EAP-pwd: No buffer for reassembly");
			FUNC8(data, FAILURE);
			return;
		}
		if ((data->in_frag_pos + len) > FUNC14(data->inbuf)) {
			FUNC9(MSG_DEBUG, "EAP-pwd: Buffer overflow "
				   "attack detected! (%d+%d > %d)",
				   (int) data->in_frag_pos, (int) len,
				   (int) FUNC14(data->inbuf));
			FUNC8(data, FAILURE);
			return;
		}
		FUNC13(data->inbuf, pos, len);
		data->in_frag_pos += len;
	}
	if (FUNC2(lm_exch)) {
		FUNC9(MSG_DEBUG, "EAP-pwd: Got a %d byte fragment",
			   (int) len);
		return;
	}
	/*
	 * last fragment won't have the M bit set (but we're obviously
	 * buffering fragments so that's how we know it's the last)
	 */
	if (data->in_frag_pos && data->inbuf) {
		pos = FUNC12(data->inbuf);
		len = data->in_frag_pos;
		FUNC9(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
			   (int) len);
	}
	switch (FUNC0(lm_exch)) {
	case EAP_PWD_OPCODE_ID_EXCH:
		FUNC7(sm, data, pos, len);
		break;
	case EAP_PWD_OPCODE_COMMIT_EXCH:
		FUNC5(sm, data, pos, len);
		break;
	case EAP_PWD_OPCODE_CONFIRM_EXCH:
		FUNC6(sm, data, pos, len);
		break;
	}
	/*
	 * if we had been buffering fragments, here's a great place
	 * to clean up
	 */
	if (data->in_frag_pos) {
		FUNC11(data->inbuf);
		data->inbuf = NULL;
		data->in_frag_pos = 0;
	}
}