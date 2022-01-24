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
struct eap_pax_hdr {int flags; int /*<<< orphan*/  public_key_id; int /*<<< orphan*/  dh_group_id; int /*<<< orphan*/  mac_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  const* y; int /*<<< orphan*/  const* x; } ;
struct TYPE_4__ {TYPE_1__ r; int /*<<< orphan*/  e; } ;
struct eap_pax_data {scalar_t__ state; int cid_len; int /*<<< orphan*/  public_key_id; int /*<<< orphan*/  dh_group_id; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  ick; int /*<<< orphan*/  const* cid; TYPE_2__ rand; int /*<<< orphan*/  ck; int /*<<< orphan*/  mid; int /*<<< orphan*/  mk; int /*<<< orphan*/  ak; } ;
struct eap_method_ret {void* ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_PAX_CK_LEN ; 
 int EAP_PAX_FLAGS_CE ; 
 int /*<<< orphan*/  EAP_PAX_ICK_LEN ; 
 int EAP_PAX_ICV_LEN ; 
 int EAP_PAX_MAC_LEN ; 
 int /*<<< orphan*/  EAP_PAX_OP_STD_2 ; 
 int EAP_PAX_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PAX_INIT ; 
 scalar_t__ PAX_STD_2_SENT ; 
 void* TRUE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC1 (struct eap_pax_hdr const*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  const* FUNC9 (struct wpabuf*) ; 
 int FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC11 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_pax_data *data,
					     struct eap_method_ret *ret, u8 id,
					     const struct eap_pax_hdr *req,
					     size_t req_plen)
{
	struct wpabuf *resp;
	const u8 *pos;
	u8 *rpos;
	size_t left, plen;

	FUNC8(MSG_DEBUG, "EAP-PAX: PAX_STD-1 (received)");

	if (data->state != PAX_INIT) {
		FUNC8(MSG_INFO, "EAP-PAX: PAX_STD-1 received in "
			   "unexpected state (%d) - ignored", data->state);
		ret->ignore = TRUE;
		return NULL;
	}

	if (req->flags & EAP_PAX_FLAGS_CE) {
		FUNC8(MSG_INFO, "EAP-PAX: PAX_STD-1 with CE flag set - "
			   "ignored");
		ret->ignore = TRUE;
		return NULL;
	}

	left = req_plen - sizeof(*req);

	if (left < 2 + EAP_PAX_RAND_LEN) {
		FUNC8(MSG_INFO, "EAP-PAX: PAX_STD-1 with too short "
			   "payload");
		ret->ignore = TRUE;
		return NULL;
	}

	pos = (const u8 *) (req + 1);
	if (FUNC0(pos) != EAP_PAX_RAND_LEN) {
		FUNC8(MSG_INFO, "EAP-PAX: PAX_STD-1 with incorrect A "
			   "length %d (expected %d)",
			   FUNC0(pos), EAP_PAX_RAND_LEN);
		ret->ignore = TRUE;
		return NULL;
	}

	pos += 2;
	left -= 2;
	FUNC4(data->rand.r.x, pos, EAP_PAX_RAND_LEN);
	FUNC6(MSG_MSGDUMP, "EAP-PAX: X (server rand)",
		    data->rand.r.x, EAP_PAX_RAND_LEN);
	pos += EAP_PAX_RAND_LEN;
	left -= EAP_PAX_RAND_LEN;

	if (left > 0) {
		FUNC6(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
			    pos, left);
	}

	if (FUNC5(data->rand.r.y, EAP_PAX_RAND_LEN)) {
		FUNC8(MSG_ERROR, "EAP-PAX: Failed to get random data");
		ret->ignore = TRUE;
		return NULL;
	}
	FUNC6(MSG_MSGDUMP, "EAP-PAX: Y (client rand)",
		    data->rand.r.y, EAP_PAX_RAND_LEN);

	if (FUNC2(req->mac_id, data->ak, data->rand.e,
					   data->mk, data->ck, data->ick,
					   data->mid) < 0) {
		ret->ignore = TRUE;
		return NULL;
	}

	FUNC8(MSG_DEBUG, "EAP-PAX: PAX_STD-2 (sending)");

	plen = 2 + EAP_PAX_RAND_LEN + 2 + data->cid_len + 2 + EAP_PAX_MAC_LEN +
		EAP_PAX_ICV_LEN;
	resp = FUNC1(req, id, EAP_PAX_OP_STD_2, plen);
	if (resp == NULL)
		return NULL;

	FUNC12(resp, EAP_PAX_RAND_LEN);
	FUNC13(resp, data->rand.r.y, EAP_PAX_RAND_LEN);
	FUNC6(MSG_MSGDUMP, "EAP-PAX: B = Y (client rand)",
		    data->rand.r.y, EAP_PAX_RAND_LEN);

	FUNC12(resp, data->cid_len);
	FUNC13(resp, data->cid, data->cid_len);
	FUNC7(MSG_MSGDUMP, "EAP-PAX: CID",
			  (u8 *) data->cid, data->cid_len);

	FUNC12(resp, EAP_PAX_MAC_LEN);
	rpos = FUNC11(resp, EAP_PAX_MAC_LEN);
	FUNC3(req->mac_id, data->ck, EAP_PAX_CK_LEN,
		    data->rand.r.x, EAP_PAX_RAND_LEN,
		    data->rand.r.y, EAP_PAX_RAND_LEN,
		    (u8 *) data->cid, data->cid_len, rpos);
	FUNC6(MSG_MSGDUMP, "EAP-PAX: MAC_CK(A, B, CID)",
		    rpos, EAP_PAX_MAC_LEN);

	/* Optional ADE could be added here, if needed */

	rpos = FUNC11(resp, EAP_PAX_ICV_LEN);
	FUNC3(req->mac_id, data->ick, EAP_PAX_ICK_LEN,
		    FUNC9(resp), FUNC10(resp) - EAP_PAX_ICV_LEN,
		    NULL, 0, NULL, 0, rpos);
	FUNC6(MSG_MSGDUMP, "EAP-PAX: ICV", rpos, EAP_PAX_ICV_LEN);

	data->state = PAX_STD_2_SENT;
	data->mac_id = req->mac_id;
	data->dh_group_id = req->dh_group_id;
	data->public_key_id = req->public_key_id;

	return resp;
}