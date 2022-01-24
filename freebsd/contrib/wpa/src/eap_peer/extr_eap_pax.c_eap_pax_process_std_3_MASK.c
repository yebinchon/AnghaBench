#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
struct wpabuf {int dummy; } ;
struct eap_pax_hdr {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  y; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct eap_pax_data {scalar_t__ state; int /*<<< orphan*/  ick; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  cid_len; scalar_t__ cid; TYPE_2__ rand; int /*<<< orphan*/  ck; } ;
struct eap_method_ret {int /*<<< orphan*/  allowNotifications; void* decision; void* methodState; void* ignore; } ;

/* Variables and functions */
 void* DECISION_FAIL ; 
 void* DECISION_UNCOND_SUCC ; 
 int /*<<< orphan*/  EAP_PAX_CK_LEN ; 
 int EAP_PAX_FLAGS_CE ; 
 int /*<<< orphan*/  EAP_PAX_ICK_LEN ; 
 size_t EAP_PAX_ICV_LEN ; 
 int EAP_PAX_MAC_LEN ; 
 int /*<<< orphan*/  EAP_PAX_OP_ACK ; 
 scalar_t__ EAP_PAX_RAND_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 void* METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PAX_DONE ; 
 scalar_t__ PAX_STD_2_SENT ; 
 void* TRUE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC1 (struct eap_pax_hdr const*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC9 (struct wpabuf*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_pax_data *data,
					     struct eap_method_ret *ret, u8 id,
					     const struct eap_pax_hdr *req,
					     size_t req_plen)
{
	struct wpabuf *resp;
	u8 *rpos, mac[EAP_PAX_MAC_LEN];
	const u8 *pos;
	size_t left;

	FUNC5(MSG_DEBUG, "EAP-PAX: PAX_STD-3 (received)");

	if (data->state != PAX_STD_2_SENT) {
		FUNC5(MSG_INFO, "EAP-PAX: PAX_STD-3 received in "
			   "unexpected state (%d) - ignored", data->state);
		ret->ignore = TRUE;
		return NULL;
	}

	if (req->flags & EAP_PAX_FLAGS_CE) {
		FUNC5(MSG_INFO, "EAP-PAX: PAX_STD-3 with CE flag set - "
			   "ignored");
		ret->ignore = TRUE;
		return NULL;
	}

	left = req_plen - sizeof(*req);

	if (left < 2 + EAP_PAX_MAC_LEN) {
		FUNC5(MSG_INFO, "EAP-PAX: PAX_STD-3 with too short "
			   "payload");
		ret->ignore = TRUE;
		return NULL;
	}

	pos = (const u8 *) (req + 1);
	if (FUNC0(pos) != EAP_PAX_MAC_LEN) {
		FUNC5(MSG_INFO, "EAP-PAX: PAX_STD-3 with incorrect "
			   "MAC_CK length %d (expected %d)",
			   FUNC0(pos), EAP_PAX_MAC_LEN);
		ret->ignore = TRUE;
		return NULL;
	}
	pos += 2;
	left -= 2;
	FUNC4(MSG_MSGDUMP, "EAP-PAX: MAC_CK(B, CID)",
		    pos, EAP_PAX_MAC_LEN);
	if (FUNC2(data->mac_id, data->ck, EAP_PAX_CK_LEN,
			data->rand.r.y, EAP_PAX_RAND_LEN,
			(u8 *) data->cid, data->cid_len, NULL, 0, mac) < 0) {
		FUNC5(MSG_INFO,
			   "EAP-PAX: Could not derive MAC_CK(B, CID)");
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return NULL;
	}

	if (FUNC3(pos, mac, EAP_PAX_MAC_LEN) != 0) {
		FUNC5(MSG_INFO, "EAP-PAX: Invalid MAC_CK(B, CID) "
			   "received");
		FUNC4(MSG_MSGDUMP, "EAP-PAX: expected MAC_CK(B, CID)",
			    mac, EAP_PAX_MAC_LEN);
		ret->methodState = METHOD_DONE;
		ret->decision = DECISION_FAIL;
		return NULL;
	}

	pos += EAP_PAX_MAC_LEN;
	left -= EAP_PAX_MAC_LEN;

	if (left > 0) {
		FUNC4(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
			    pos, left);
	}

	FUNC5(MSG_DEBUG, "EAP-PAX: PAX-ACK (sending)");

	resp = FUNC1(req, id, EAP_PAX_OP_ACK, EAP_PAX_ICV_LEN);
	if (resp == NULL)
		return NULL;

	/* Optional ADE could be added here, if needed */

	rpos = FUNC9(resp, EAP_PAX_ICV_LEN);
	if (FUNC2(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
			FUNC7(resp), FUNC8(resp) - EAP_PAX_ICV_LEN,
			NULL, 0, NULL, 0, rpos) < 0) {
		FUNC6(resp);
		return NULL;
	}
	FUNC4(MSG_MSGDUMP, "EAP-PAX: ICV", rpos, EAP_PAX_ICV_LEN);

	data->state = PAX_DONE;
	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_UNCOND_SUCC;
	ret->allowNotifications = FALSE;

	return resp;
}