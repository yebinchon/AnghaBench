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
struct eap_tnc_data {scalar_t__ out_used; int fragment_size; int was_fail; int was_done; scalar_t__ state; int /*<<< orphan*/ * out_buf; } ;

/* Variables and functions */
 scalar_t__ DONE ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ; 
 int EAP_TNC_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tnc_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_tnc_data *data, u8 id)
{
	struct wpabuf *req;
	u8 flags;
	size_t send_len, plen;

	FUNC2(MSG_DEBUG, "EAP-TNC: Generating Request");

	flags = EAP_TNC_VERSION;
	send_len = FUNC5(data->out_buf) - data->out_used;
	if (1 + send_len > data->fragment_size) {
		send_len = data->fragment_size - 1;
		flags |= EAP_TNC_FLAGS_MORE_FRAGMENTS;
		if (data->out_used == 0) {
			flags |= EAP_TNC_FLAGS_LENGTH_INCLUDED;
			send_len -= 4;
		}
	}

	plen = 1 + send_len;
	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
		plen += 4;
	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TNC, plen,
			    EAP_CODE_REQUEST, id);
	if (req == NULL)
		return NULL;

	FUNC8(req, flags); /* Flags */
	if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
		FUNC6(req, FUNC5(data->out_buf));

	FUNC7(req, FUNC4(data->out_buf) + data->out_used,
			send_len);
	data->out_used += send_len;

	if (data->out_used == FUNC5(data->out_buf)) {
		FUNC2(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
			   "(message sent completely)",
			   (unsigned long) send_len);
		FUNC3(data->out_buf);
		data->out_buf = NULL;
		data->out_used = 0;
		if (data->was_fail)
			FUNC1(data, FAIL);
		else if (data->was_done)
			FUNC1(data, DONE);
	} else {
		FUNC2(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
			   "(%lu more to send)", (unsigned long) send_len,
			   (unsigned long) FUNC5(data->out_buf) -
			   data->out_used);
		if (data->state == FAIL)
			data->was_fail = 1;
		else if (data->state == DONE)
			data->was_done = 1;
		FUNC1(data, WAIT_FRAG_ACK);
	}

	return req;
}