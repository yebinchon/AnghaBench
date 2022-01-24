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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* ignore; } ;
struct eap_ikev2_data {scalar_t__ state; scalar_t__ out_used; int /*<<< orphan*/ * out_buf; int /*<<< orphan*/  ikev2; struct wpabuf* in_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_IKEV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAIL ; 
 int IKEV2_FLAGS_LENGTH_INCLUDED ; 
 int IKEV2_FLAGS_MORE_FRAGMENTS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PROC_MSG ; 
 void* TRUE ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (struct wpabuf const*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (struct eap_ikev2_data*,struct eap_method_ret*,int) ; 
 scalar_t__ FUNC4 (struct eap_ikev2_data*,int const*,int) ; 
 struct wpabuf* FUNC5 (struct eap_ikev2_data*,struct eap_method_ret*,int,int,int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC6 (struct eap_ikev2_data*,struct wpabuf const*,int,int const*,int const**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_ikev2_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int const*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct eap_sm *sm, void *priv,
					 struct eap_method_ret *ret,
					 const struct wpabuf *reqData)
{
	struct eap_ikev2_data *data = priv;
	const u8 *start, *pos, *end;
	size_t len;
	u8 flags, id;
	u32 message_length = 0;
	struct wpabuf tmpbuf;

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, reqData, &len);
	if (pos == NULL) {
		ret->ignore = TRUE;
		return NULL;
	}

	id = FUNC1(reqData);

	start = pos;
	end = start + len;

	if (len == 0)
		flags = 0; /* fragment ack */
	else
		flags = *pos++;

	if (FUNC6(data, reqData, flags, pos, &end,
				  data->state == WAIT_FRAG_ACK && len == 0) < 0)
	{
		ret->ignore = TRUE;
		return NULL;
	}

	if (flags & IKEV2_FLAGS_LENGTH_INCLUDED) {
		if (end - pos < 4) {
			FUNC10(MSG_DEBUG, "EAP-IKEV2: Message underflow");
			ret->ignore = TRUE;
			return NULL;
		}
		message_length = FUNC0(pos);
		pos += 4;

		if (message_length < (u32) (end - pos)) {
			FUNC10(MSG_DEBUG, "EAP-IKEV2: Invalid Message "
				   "Length (%d; %ld remaining in this msg)",
				   message_length, (long) (end - pos));
			ret->ignore = TRUE;
			return NULL;
		}
	}

	FUNC10(MSG_DEBUG, "EAP-IKEV2: Received packet: Flags 0x%x "
		   "Message Length %u", flags, message_length);

	if (data->state == WAIT_FRAG_ACK) {
		if (len != 0) {
			FUNC10(MSG_DEBUG, "EAP-IKEV2: Unexpected payload "
				   "in WAIT_FRAG_ACK state");
			ret->ignore = TRUE;
			return NULL;
		}
		FUNC10(MSG_DEBUG, "EAP-IKEV2: Fragment acknowledged");
		FUNC7(data, PROC_MSG);
		return FUNC3(data, ret, id);
	}

	if (data->in_buf && FUNC4(data, pos, end - pos) < 0) {
		ret->ignore = TRUE;
		return NULL;
	}
		
	if (flags & IKEV2_FLAGS_MORE_FRAGMENTS) {
		return FUNC5(data, ret, id, flags,
						  message_length, pos,
						  end - pos);
	}

	if (data->in_buf == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC12(&tmpbuf, pos, end - pos);
		data->in_buf = &tmpbuf;
	}

	if (FUNC9(&data->ikev2, data->in_buf) < 0) {
		if (data->in_buf == &tmpbuf)
			data->in_buf = NULL;
		FUNC7(data, FAIL);
		return NULL;
	}

	if (data->in_buf != &tmpbuf)
		FUNC11(data->in_buf);
	data->in_buf = NULL;

	if (data->out_buf == NULL) {
		data->out_buf = FUNC8(&data->ikev2);
		if (data->out_buf == NULL) {
			FUNC10(MSG_DEBUG, "EAP-IKEV2: Failed to generate "
				   "IKEv2 message");
			return NULL;
		}
		data->out_used = 0;
	}

	FUNC7(data, PROC_MSG);
	return FUNC3(data, ret, id);
}