#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_4__* user; } ;
struct eap_pax_hdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  const* y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {TYPE_1__ r; int /*<<< orphan*/  e; } ;
struct eap_pax_data {scalar_t__ state; size_t cid_len; int keys_set; int /*<<< orphan*/  ick; int /*<<< orphan*/  mac_id; int /*<<< orphan*/ * cid; TYPE_2__ rand; int /*<<< orphan*/  ck; int /*<<< orphan*/  mid; int /*<<< orphan*/  mk; int /*<<< orphan*/  const* ak; } ;
struct TYPE_8__ {int password_len; int /*<<< orphan*/  const* password; TYPE_3__* methods; } ;
struct TYPE_7__ {scalar_t__ vendor; scalar_t__ method; } ;

/* Variables and functions */
 int EAP_MAX_METHODS ; 
 int EAP_PAX_AK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_CK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_ICK_LEN ; 
 int EAP_PAX_ICV_LEN ; 
 int EAP_PAX_MAC_LEN ; 
 int EAP_PAX_RAND_LEN ; 
 scalar_t__ EAP_TYPE_NONE ; 
 scalar_t__ EAP_TYPE_PAX ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PAX_STD_1 ; 
 scalar_t__ PAX_STD_3 ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (scalar_t__,scalar_t__,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct eap_sm*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int FUNC13 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC14(struct eap_sm *sm,
				  struct eap_pax_data *data,
				  struct wpabuf *respData)
{
	struct eap_pax_hdr *resp;
	u8 mac[EAP_PAX_MAC_LEN], icvbuf[EAP_PAX_ICV_LEN];
	const u8 *pos;
	size_t len, left, cid_len;
	int i;

	if (data->state != PAX_STD_1)
		return;

	FUNC11(MSG_DEBUG, "EAP-PAX: Received PAX_STD-2");

	pos = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_PAX, respData, &len);
	if (pos == NULL || len < sizeof(*resp) + EAP_PAX_ICV_LEN)
		return;

	resp = (struct eap_pax_hdr *) pos;
	pos = (u8 *) (resp + 1);
	left = len - sizeof(*resp);

	if (left < 2 + EAP_PAX_RAND_LEN ||
	    FUNC0(pos) != EAP_PAX_RAND_LEN) {
		FUNC11(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (B)");
		return;
	}
	pos += 2;
	left -= 2;
	FUNC7(data->rand.r.y, pos, EAP_PAX_RAND_LEN);
	FUNC9(MSG_MSGDUMP, "EAP-PAX: Y (client rand)",
		    data->rand.r.y, EAP_PAX_RAND_LEN);
	pos += EAP_PAX_RAND_LEN;
	left -= EAP_PAX_RAND_LEN;

	if (left < 2 || (size_t) 2 + FUNC0(pos) > left) {
		FUNC11(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (CID)");
		return;
	}
	cid_len = FUNC0(pos);
	if (cid_len > 1500) {
		FUNC11(MSG_INFO, "EAP-PAX: Too long CID");
		return;
	}
	data->cid_len = cid_len;
	FUNC5(data->cid);
	data->cid = FUNC8(pos + 2, data->cid_len);
	if (data->cid == NULL) {
		FUNC11(MSG_INFO, "EAP-PAX: Failed to allocate memory for "
			   "CID");
		return;
	}
	pos += 2 + data->cid_len;
	left -= 2 + data->cid_len;
	FUNC10(MSG_MSGDUMP, "EAP-PAX: CID",
			  (u8 *) data->cid, data->cid_len);

	if (left < 2 + EAP_PAX_MAC_LEN ||
	    FUNC0(pos) != EAP_PAX_MAC_LEN) {
		FUNC11(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (MAC_CK)");
		return;
	}
	pos += 2;
	left -= 2;
	FUNC9(MSG_MSGDUMP, "EAP-PAX: MAC_CK(A, B, CID)",
		    pos, EAP_PAX_MAC_LEN);

	if (FUNC4(sm, (u8 *) data->cid, data->cid_len, 0) < 0) {
		FUNC10(MSG_DEBUG, "EAP-PAX: unknown CID",
				  (u8 *) data->cid, data->cid_len);
		data->state = FAILURE;
		return;
	}

	for (i = 0;
	     i < EAP_MAX_METHODS &&
		     (sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
		      sm->user->methods[i].method != EAP_TYPE_NONE);
	     i++) {
		if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
		    sm->user->methods[i].method == EAP_TYPE_PAX)
			break;
	}

	if (i >= EAP_MAX_METHODS ||
	    sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
	    sm->user->methods[i].method != EAP_TYPE_PAX) {
		FUNC10(MSG_DEBUG,
				  "EAP-PAX: EAP-PAX not enabled for CID",
				  (u8 *) data->cid, data->cid_len);
		data->state = FAILURE;
		return;
	}

	if (sm->user->password == NULL ||
	    sm->user->password_len != EAP_PAX_AK_LEN) {
		FUNC10(MSG_DEBUG, "EAP-PAX: invalid password in "
				  "user database for CID",
				  (u8 *) data->cid, data->cid_len);
		data->state = FAILURE;
		return;
	}
	FUNC7(data->ak, sm->user->password, EAP_PAX_AK_LEN);

	if (FUNC2(data->mac_id, data->ak,
					   data->rand.e, data->mk, data->ck,
					   data->ick, data->mid) < 0) {
		FUNC11(MSG_INFO, "EAP-PAX: Failed to complete initial "
			   "key derivation");
		data->state = FAILURE;
		return;
	}
	data->keys_set = 1;

	if (FUNC3(data->mac_id, data->ck, EAP_PAX_CK_LEN,
			data->rand.r.x, EAP_PAX_RAND_LEN,
			data->rand.r.y, EAP_PAX_RAND_LEN,
			(u8 *) data->cid, data->cid_len, mac) < 0) {
		FUNC11(MSG_INFO, "EAP-PAX: Failed to calculate MAC_CK");
		data->state = FAILURE;
		return;
	}

	if (FUNC6(mac, pos, EAP_PAX_MAC_LEN) != 0) {
		FUNC11(MSG_INFO, "EAP-PAX: Invalid MAC_CK(A, B, CID) in "
			   "PAX_STD-2");
		FUNC9(MSG_MSGDUMP, "EAP-PAX: Expected MAC_CK(A, B, CID)",
			    mac, EAP_PAX_MAC_LEN);
		data->state = FAILURE;
		return;
	}

	pos += EAP_PAX_MAC_LEN;
	left -= EAP_PAX_MAC_LEN;

	if (left < EAP_PAX_ICV_LEN) {
		FUNC11(MSG_INFO, "EAP-PAX: Too short ICV (%lu) in "
			   "PAX_STD-2", (unsigned long) left);
		return;
	}
	FUNC9(MSG_MSGDUMP, "EAP-PAX: ICV", pos, EAP_PAX_ICV_LEN);
	if (FUNC3(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
			FUNC12(respData),
			FUNC13(respData) - EAP_PAX_ICV_LEN, NULL, 0,
			NULL, 0, icvbuf) < 0) {
		FUNC11(MSG_INFO, "EAP-PAX: Failed to calculate ICV");
		return;
	}

	if (FUNC6(icvbuf, pos, EAP_PAX_ICV_LEN) != 0) {
		FUNC11(MSG_INFO, "EAP-PAX: Invalid ICV in PAX_STD-2");
		FUNC9(MSG_MSGDUMP, "EAP-PAX: Expected ICV",
			    icvbuf, EAP_PAX_ICV_LEN);
		return;
	}
	pos += EAP_PAX_ICV_LEN;
	left -= EAP_PAX_ICV_LEN;

	if (left > 0) {
		FUNC9(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
			    pos, left);
	}

	data->state = PAX_STD_3;
}