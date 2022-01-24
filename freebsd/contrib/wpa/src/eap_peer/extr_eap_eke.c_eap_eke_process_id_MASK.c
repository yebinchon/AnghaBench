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
typedef  scalar_t__ u8 ;
typedef  struct wpabuf const wpabuf ;
struct eap_method_ret {int dummy; } ;
struct eap_eke_data {scalar_t__ state; scalar_t__ const dhgroup; scalar_t__ const encr; scalar_t__ const prf; scalar_t__ const mac; int serverid_len; int peerid_len; scalar_t__ const* peerid; struct wpabuf const* msgs; int /*<<< orphan*/ * serverid; int /*<<< orphan*/  sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_NO_PROPOSAL_CHOSEN ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PROTO_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_ID ; 
 int EAP_EKE_ID_NAI ; 
 scalar_t__ IDENTITY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf const* FUNC0 (struct eap_eke_data*,struct eap_method_ret*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct wpabuf const* FUNC1 (struct eap_eke_data*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__ const) ; 
 scalar_t__ FUNC8 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf const* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*) ; 
 scalar_t__ FUNC15 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf const*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf const*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct wpabuf const*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC19(struct eap_eke_data *data,
					  struct eap_method_ret *ret,
					  const struct wpabuf *reqData,
					  const u8 *payload,
					  size_t payload_len)
{
	struct wpabuf *resp;
	unsigned num_prop, i;
	const u8 *pos, *end;
	const u8 *prop = NULL;
	u8 idtype;
	u8 id = FUNC8(reqData);

	if (data->state != IDENTITY) {
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	FUNC12(MSG_DEBUG, "EAP-EKE: Received EAP-EKE-ID/Request");

	if (payload_len < 2 + 4) {
		FUNC12(MSG_DEBUG, "EAP-EKE: Too short ID/Request Data");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	pos = payload;
	end = payload + payload_len;

	num_prop = *pos++;
	pos++; /* Ignore Reserved field */

	if (pos + num_prop * 4 > end) {
		FUNC12(MSG_DEBUG, "EAP-EKE: Too short ID/Request Data (num_prop=%u)",
			   num_prop);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	for (i = 0; i < num_prop; i++) {
		const u8 *tmp = pos;

		FUNC12(MSG_DEBUG, "EAP-EKE: Proposal #%u: dh=%u encr=%u prf=%u mac=%u",
			   i, pos[0], pos[1], pos[2], pos[3]);
		pos += 4;

		if ((data->dhgroup && data->dhgroup != *tmp) ||
		    !FUNC4(*tmp))
			continue;
		tmp++;
		if ((data->encr && data->encr != *tmp) ||
		    !FUNC5(*tmp))
			continue;
		tmp++;
		if ((data->prf && data->prf != *tmp) ||
		    !FUNC7(*tmp))
			continue;
		tmp++;
		if ((data->mac && data->mac != *tmp) ||
		    !FUNC6(*tmp))
			continue;

		prop = tmp - 3;
		if (FUNC2(&data->sess, prop[0], prop[1], prop[2],
					 prop[3]) < 0) {
			prop = NULL;
			continue;
		}

		FUNC12(MSG_DEBUG, "EAP-EKE: Selected proposal");
		break;
	}

	if (prop == NULL) {
		FUNC12(MSG_DEBUG, "EAP-EKE: No acceptable proposal found");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_NO_PROPOSAL_CHOSEN);
	}

	pos += (num_prop - i - 1) * 4;

	if (pos == end) {
		FUNC12(MSG_DEBUG, "EAP-EKE: Too short ID/Request Data to include IDType/Identity");
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PROTO_ERROR);
	}

	idtype = *pos++;
	FUNC12(MSG_DEBUG, "EAP-EKE: Server IDType %u", idtype);
	FUNC11(MSG_DEBUG, "EAP-EKE: Server Identity",
			  pos, end - pos);
	FUNC9(data->serverid);
	data->serverid = FUNC10(pos, end - pos);
	if (data->serverid == NULL) {
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	data->serverid_len = end - pos;

	FUNC12(MSG_DEBUG, "EAP-EKE: Sending EAP-EKE-ID/Response");

	resp = FUNC1(data, id,
				 2 + 4 + 1 + data->peerid_len,
				 EAP_EKE_ID);
	if (resp == NULL) {
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}

	FUNC18(resp, 1); /* NumProposals */
	FUNC18(resp, 0); /* Reserved */
	FUNC17(resp, prop, 4); /* Selected Proposal */
	FUNC18(resp, EAP_EKE_ID_NAI);
	if (data->peerid)
		FUNC17(resp, data->peerid, data->peerid_len);

	FUNC14(data->msgs);
	data->msgs = FUNC13(FUNC15(reqData) + FUNC15(resp));
	if (data->msgs == NULL) {
		FUNC14(resp);
		return FUNC0(data, ret, id,
					  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
	}
	FUNC16(data->msgs, reqData);
	FUNC16(data->msgs, resp);

	FUNC3(data, COMMIT);

	return resp;
}