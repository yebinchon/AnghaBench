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
struct eap_method_ret {void* decision; void* methodState; int /*<<< orphan*/  allowNotifications; int /*<<< orphan*/  ignore; } ;
struct TYPE_5__ {int /*<<< orphan*/  SK_integ_len; int /*<<< orphan*/  SK_ar; } ;
struct TYPE_4__ {int /*<<< orphan*/  integ; } ;
struct TYPE_6__ {int state; TYPE_2__ keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {size_t out_used; int fragment_size; int keys_ready; struct wpabuf* out_buf; int /*<<< orphan*/  state; TYPE_3__ ikev2; } ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 int /*<<< orphan*/  DONE ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_IKEV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  FALSE ; 
#define  IKEV2_DONE 130 
#define  IKEV2_FAILED 129 
 int IKEV2_FLAGS_ICV_INCLUDED ; 
 int IKEV2_FLAGS_LENGTH_INCLUDED ; 
 int IKEV2_FLAGS_MORE_FRAGMENTS ; 
 void* METHOD_DONE ; 
 void* METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  SA_AUTH 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAIT_FRAG_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ikev2_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ikev2_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 struct ikev2_integ_alg* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int* FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*) ; 
 size_t FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_ikev2_data *data,
					   struct eap_method_ret *ret, u8 id)
{
	struct wpabuf *resp;
	u8 flags;
	size_t send_len, plen, icv_len = 0;

	ret->ignore = FALSE;
	FUNC5(MSG_DEBUG, "EAP-IKEV2: Generating Response");
	ret->allowNotifications = TRUE;

	flags = 0;
	send_len = FUNC9(data->out_buf) - data->out_used;
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
		FUNC5(MSG_DEBUG, "EAP-IKEV2: Add Integrity Checksum "
			   "Data");
		flags |= IKEV2_FLAGS_ICV_INCLUDED;
		integ = FUNC3(data->ikev2.proposal.integ);
		if (integ == NULL) {
			FUNC5(MSG_DEBUG, "EAP-IKEV2: Unknown INTEG "
				   "transform / cannot generate ICV");
			return NULL;
		}
		icv_len = integ->hash_len;

		plen += icv_len;
	}
	resp = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, plen,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;

	FUNC13(resp, flags); /* Flags */
	if (flags & IKEV2_FLAGS_LENGTH_INCLUDED)
		FUNC11(resp, FUNC9(data->out_buf));

	FUNC12(resp, FUNC8(data->out_buf) + data->out_used,
			send_len);
	data->out_used += send_len;

	if (flags & IKEV2_FLAGS_ICV_INCLUDED) {
		const u8 *msg = FUNC7(resp);
		size_t len = FUNC9(resp);
		FUNC4(data->ikev2.proposal.integ,
				 data->ikev2.keys.SK_ar,
				 data->ikev2.keys.SK_integ_len,
				 msg, len, FUNC10(resp, icv_len));
	}

	ret->methodState = METHOD_MAY_CONT;
	ret->decision = DECISION_FAIL;

	if (data->out_used == FUNC9(data->out_buf)) {
		FUNC5(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
			   "(message sent completely)",
			   (unsigned long) send_len);
		FUNC6(data->out_buf);
		data->out_buf = NULL;
		data->out_used = 0;
		switch (data->ikev2.state) {
		case SA_AUTH:
			/* SA_INIT was sent out, so message have to be
			 * integrity protected from now on. */
			data->keys_ready = 1;
			break;
		case IKEV2_DONE:
			ret->methodState = METHOD_DONE;
			if (data->state == FAIL)
				break;
			ret->decision = DECISION_COND_SUCC;
			FUNC5(MSG_DEBUG, "EAP-IKEV2: Authentication "
				   "completed successfully");
			if (FUNC0(data))
				break;
			FUNC1(data, DONE);
			break;
		case IKEV2_FAILED:
			FUNC5(MSG_DEBUG, "EAP-IKEV2: Authentication "
				   "failed");
			ret->methodState = METHOD_DONE;
			ret->decision = DECISION_FAIL;
			break;
		default:
			break;
		}
	} else {
		FUNC5(MSG_DEBUG, "EAP-IKEV2: Sending out %lu bytes "
			   "(%lu more to send)", (unsigned long) send_len,
			   (unsigned long) FUNC9(data->out_buf) -
			   data->out_used);
		FUNC1(data, WAIT_FRAG_ACK);
	}

	return resp;
}