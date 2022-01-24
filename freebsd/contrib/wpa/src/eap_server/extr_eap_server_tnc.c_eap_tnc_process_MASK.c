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
struct eap_tnc_data {scalar_t__ state; struct wpabuf* in_buf; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONTINUE ; 
 scalar_t__ DONE ; 
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAIL ; 
 scalar_t__ FRAG_ACK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 int FUNC0 (int const*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC2 (struct eap_tnc_data*,int const*,int) ; 
 scalar_t__ FUNC3 (struct eap_tnc_data*,int,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_tnc_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_tnc_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int const*,int) ; 

__attribute__((used)) static void FUNC12(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_tnc_data *data = priv;
	const u8 *pos, *end;
	size_t len;
	u8 flags;
	u32 message_length = 0;
	struct wpabuf tmpbuf;

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_TNC, respData, &len);
	if (pos == NULL)
		return; /* Should not happen; message already verified */

	end = pos + len;

	if (len == 1 && (data->state == DONE || data->state == FAIL)) {
		FUNC7(MSG_DEBUG, "EAP-TNC: Peer acknowledged the last "
			   "message");
		return;
	}

	if (len == 0) {
		/* fragment ack */
		flags = 0;
	} else
		flags = *pos++;

	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED) {
		if (end - pos < 4) {
			FUNC7(MSG_DEBUG, "EAP-TNC: Message underflow");
			FUNC4(data, FAIL);
			return;
		}
		message_length = FUNC0(pos);
		pos += 4;

		if (message_length < (u32) (end - pos) ||
		    message_length > 75000) {
			FUNC7(MSG_DEBUG, "EAP-TNC: Invalid Message "
				   "Length (%d; %ld remaining in this msg)",
				   message_length, (long) (end - pos));
			FUNC4(data, FAIL);
			return;
		}
	}
	FUNC7(MSG_DEBUG, "EAP-TNC: Received packet: Flags 0x%x "
		   "Message Length %u", flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (len > 1) {
			FUNC7(MSG_DEBUG, "EAP-TNC: Unexpected payload "
				   "in WAIT_FRAG_ACK state");
			FUNC4(data, FAIL);
			return;
		}
		FUNC7(MSG_DEBUG, "EAP-TNC: Fragment acknowledged");
		FUNC4(data, CONTINUE);
		return;
	}

	if (data->in_buf && FUNC2(data, pos, end - pos) < 0) {
		FUNC4(data, FAIL);
		return;
	}
		
	if (flags & EAP_TNC_FLAGS_MORE_FRAGMENTS) {
		if (FUNC3(data, flags, message_length,
					     pos, end - pos) < 0)
			FUNC4(data, FAIL);
		else
			FUNC4(data, FRAG_ACK);
		return;
	} else if (data->state == FRAG_ACK) {
		FUNC7(MSG_DEBUG, "EAP-TNC: All fragments received");
		FUNC4(data, CONTINUE);
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC11(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	FUNC6(MSG_MSGDUMP, "EAP-TNC: Received payload",
			  FUNC9(data->in_buf), FUNC10(data->in_buf));
	FUNC5(data, data->in_buf);

	if (data->in_buf != &tmpbuf)
		FUNC8(data->in_buf);
	data->in_buf = NULL;
}