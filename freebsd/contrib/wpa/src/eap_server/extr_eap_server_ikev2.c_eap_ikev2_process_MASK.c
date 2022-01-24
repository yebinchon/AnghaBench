#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct eap_ikev2_data {scalar_t__ state; int keys_ready; struct wpabuf* in_buf; TYPE_1__ ikev2; } ;

/* Variables and functions */
 scalar_t__ DONE ; 
 int /*<<< orphan*/  EAP_TYPE_IKEV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAIL ; 
 scalar_t__ FRAG_ACK ; 
#define  IKEV2_DONE 129 
 int IKEV2_FLAGS_LENGTH_INCLUDED ; 
 int IKEV2_FLAGS_MORE_FRAGMENTS ; 
 scalar_t__ MSG ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  SA_AUTH 128 
 scalar_t__ WAIT_FRAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC2 (struct eap_ikev2_data*,int const*,int) ; 
 scalar_t__ FUNC3 (struct eap_ikev2_data*,int,int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC4 (struct eap_ikev2_data*,struct wpabuf*,int,int const*,int const**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_ikev2_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_ikev2_data*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int const*,int) ; 

__attribute__((used)) static void FUNC11(struct eap_sm *sm, void *priv,
			      struct wpabuf *respData)
{
	struct eap_ikev2_data *data = priv;
	const u8 *start, *pos, *end;
	size_t len;
	u8 flags;
	u32 message_length = 0;
	struct wpabuf tmpbuf;

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, respData,
			       &len);
	if (pos == NULL)
		return; /* Should not happen; message already verified */

	start = pos;
	end = start + len;

	if (len == 0) {
		/* fragment ack */
		flags = 0;
	} else
		flags = *pos++;

	if (FUNC4(data, respData, flags, pos, &end,
				  data->state == WAIT_FRAG_ACK && len == 0) < 0)
	{
		FUNC6(data, FAIL);
		return;
	}

	if (flags & IKEV2_FLAGS_LENGTH_INCLUDED) {
		if (end - pos < 4) {
			FUNC8(MSG_DEBUG, "EAP-IKEV2: Message underflow");
			FUNC6(data, FAIL);
			return;
		}
		message_length = FUNC0(pos);
		pos += 4;

		if (message_length < (u32) (end - pos)) {
			FUNC8(MSG_DEBUG, "EAP-IKEV2: Invalid Message "
				   "Length (%d; %ld remaining in this msg)",
				   message_length, (long) (end - pos));
			FUNC6(data, FAIL);
			return;
		}
	}
	FUNC8(MSG_DEBUG, "EAP-IKEV2: Received packet: Flags 0x%x "
		   "Message Length %u", flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (len != 0) {
			FUNC8(MSG_DEBUG, "EAP-IKEV2: Unexpected payload "
				   "in WAIT_FRAG_ACK state");
			FUNC6(data, FAIL);
			return;
		}
		FUNC8(MSG_DEBUG, "EAP-IKEV2: Fragment acknowledged");
		FUNC6(data, MSG);
		return;
	}

	if (data->in_buf && FUNC2(data, pos, end - pos) < 0) {
		FUNC6(data, FAIL);
		return;
	}
		
	if (flags & IKEV2_FLAGS_MORE_FRAGMENTS) {
		if (FUNC3(data, flags, message_length,
					       pos, end - pos) < 0)
			FUNC6(data, FAIL);
		else
			FUNC6(data, FRAG_ACK);
		return;
	} else if (data->state == FRAG_ACK) {
		FUNC8(MSG_DEBUG, "EAP-TNC: All fragments received");
		data->state = MSG;
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC10(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	if (FUNC7(&data->ikev2, data->in_buf) < 0) {
		if (data->in_buf == &tmpbuf)
			data->in_buf = NULL;
		FUNC6(data, FAIL);
		return;
	}

	switch (data->ikev2.state) {
	case SA_AUTH:
		/* SA_INIT was sent out, so message have to be
		 * integrity protected from now on. */
		data->keys_ready = 1;
		break;
	case IKEV2_DONE:
		if (data->state == FAIL)
			break;
		FUNC8(MSG_DEBUG, "EAP-IKEV2: Authentication completed "
			   "successfully");
		if (FUNC5(data))
			break;
		FUNC6(data, DONE);
		break;
	default:
		break;
	}

	if (data->in_buf != &tmpbuf)
		FUNC9(data->in_buf);
	data->in_buf = NULL;
}