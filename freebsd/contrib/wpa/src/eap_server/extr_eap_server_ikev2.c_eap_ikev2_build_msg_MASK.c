#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_integ_alg {size_t hash_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  SK_integ_len; int /*<<< orphan*/  SK_ai; } ;
struct TYPE_4__ {int /*<<< orphan*/  integ; } ;
struct TYPE_6__ {TYPE_2__ keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {size_t out_used; int fragment_size; struct wpabuf* out_buf; TYPE_3__ ikev2; scalar_t__ keys_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_IKEV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int IKEV2_FLAGS_ICV_INCLUDED ; 
 int IKEV2_FLAGS_LENGTH_INCLUDED ; 
 int IKEV2_FLAGS_MORE_FRAGMENTS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WAIT_FRAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ikev2_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 struct ikev2_integ_alg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int* FUNC6 (struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*) ; 
 size_t FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct eap_ikev2_data *data, u8 id)
{
	struct wpabuf *req;
	u8 flags;
	size_t send_len, plen, icv_len = 0;

	FUNC4(MSG_DEBUG, "EAP-IKEV2: Generating Request");

	flags = 0;
	send_len = FUNC8(data->out_buf) - data->out_used;
	if (1 + send_len > data->fragment_size) {
		send_len = data->fragment_size - 1;
		flags |= IKEV2_FLAGS_MORE_FRAGMENTS;
		if (data->out_used == 0) {
			flags |= IKEV2_FLAGS_LENGTH_INCLUDED;
			send_len -= 4;
		}
	}

	plen = 1 + send_len;
	if (flags & IKEV2_FLAGS_LENGTH_INCLUDED)
		plen += 4;
	if (data->keys_ready) {
		const struct ikev2_integ_alg *integ;
		FUNC4(MSG_DEBUG, "EAP-IKEV2: Add Integrity Checksum "
			   "Data");
		flags |= IKEV2_FLAGS_ICV_INCLUDED;
		integ = FUNC2(data->ikev2.proposal.integ);
		if (integ == NULL) {
			FUNC4(MSG_DEBUG, "EAP-IKEV2: Unknown INTEG "
				   "transform / cannot generate ICV");
			return NULL;
		}
		icv_len = integ->hash_len;

		plen += icv_len;
	}
	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, plen,
			    EAP_CODE_REQUEST, id);
	if (req == NULL)
		return NULL;

	FUNC12(req, flags); /* Flags */
	if (flags & IKEV2_FLAGS_LENGTH_INCLUDED)
		FUNC10(req, FUNC8(data->out_buf));

	FUNC11(req, FUNC7(data->out_buf) + data->out_used,
			send_len);
	data->out_used += send_len;

	if (flags & IKEV2_FLAGS_ICV_INCLUDED) {
		const u8 *msg = FUNC6(req);
		size_t len = FUNC8(req);
		FUNC3(data->ikev2.proposal.integ,
				 data->ikev2.keys.SK_ai,
				 data->ikev2.keys.SK_integ_len,
				 msg, len, FUNC9(req, icv_len));
	}

	if (data->out_used == FUNC8(data->out_buf)) {
		FUNC4(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
			   "(message sent completely)",
			   (unsigned long) send_len);
		FUNC5(data->out_buf);
		data->out_buf = NULL;
		data->out_used = 0;
	} else {
		FUNC4(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
			   "(%lu more to send)", (unsigned long) send_len,
			   (unsigned long) FUNC8(data->out_buf) -
			   data->out_used);
		FUNC0(data, WAIT_FRAG_ACK);
	}

	return req;
}