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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pax_hdr {int /*<<< orphan*/  public_key_id; int /*<<< orphan*/  dh_group_id; int /*<<< orphan*/  mac_id; scalar_t__ flags; int /*<<< orphan*/  op_code; } ;
struct TYPE_3__ {int /*<<< orphan*/  y; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct eap_pax_data {void* state; int /*<<< orphan*/  ick; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  cid_len; scalar_t__ cid; TYPE_2__ rand; int /*<<< orphan*/  ck; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_PAX_CK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_DH_GROUP_NONE ; 
 int /*<<< orphan*/  EAP_PAX_ICK_LEN ; 
 int EAP_PAX_ICV_LEN ; 
 int EAP_PAX_MAC_LEN ; 
 int /*<<< orphan*/  EAP_PAX_OP_STD_3 ; 
 int /*<<< orphan*/  EAP_PAX_PUBLIC_KEY_NONE ; 
 scalar_t__ EAP_PAX_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PAX ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 void* FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_sm *sm,
					   struct eap_pax_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_pax_hdr *pax;
	u8 *pos;

	FUNC3(MSG_DEBUG, "EAP-PAX: PAX_STD-3 (sending)");

	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_PAX,
			    sizeof(*pax) + 2 + EAP_PAX_MAC_LEN +
			    EAP_PAX_ICV_LEN, EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC3(MSG_ERROR, "EAP-PAX: Failed to allocate memory "
			   "request");
		data->state = FAILURE;
		return NULL;
	}

	pax = FUNC7(req, sizeof(*pax));
	pax->op_code = EAP_PAX_OP_STD_3;
	pax->flags = 0;
	pax->mac_id = data->mac_id;
	pax->dh_group_id = EAP_PAX_DH_GROUP_NONE;
	pax->public_key_id = EAP_PAX_PUBLIC_KEY_NONE;

	FUNC8(req, EAP_PAX_MAC_LEN);
	pos = FUNC7(req, EAP_PAX_MAC_LEN);
	if (FUNC1(data->mac_id, data->ck, EAP_PAX_CK_LEN,
			data->rand.r.y, EAP_PAX_RAND_LEN,
			(u8 *) data->cid, data->cid_len, NULL, 0, pos) < 0) {
		FUNC3(MSG_ERROR, "EAP-PAX: Failed to calculate MAC");
		data->state = FAILURE;
		FUNC4(req);
		return NULL;
	}
	FUNC2(MSG_MSGDUMP, "EAP-PAX: MAC_CK(B, CID)",
		    pos, EAP_PAX_MAC_LEN);

	/* Optional ADE could be added here, if needed */

	pos = FUNC7(req, EAP_PAX_MAC_LEN);
	if (FUNC1(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
			FUNC6(req), FUNC5(req) - EAP_PAX_ICV_LEN,
			NULL, 0, NULL, 0, pos) < 0) {
		FUNC3(MSG_ERROR, "EAP-PAX: Failed to calculate ICV");
		data->state = FAILURE;
		FUNC4(req);
		return NULL;
	}
	FUNC2(MSG_MSGDUMP, "EAP-PAX: ICV", pos, EAP_PAX_ICV_LEN);

	return req;
}