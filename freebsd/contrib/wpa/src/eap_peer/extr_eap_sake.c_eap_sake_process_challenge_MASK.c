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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_parse_attr {int /*<<< orphan*/  serverid_len; scalar_t__ serverid; int /*<<< orphan*/  rand_s; } ;
struct TYPE_2__ {int /*<<< orphan*/  auth; } ;
struct eap_sake_data {scalar_t__ state; int peerid_len; scalar_t__ peerid; int /*<<< orphan*/  serverid_len; int /*<<< orphan*/ * serverid; scalar_t__ rand_p; scalar_t__ rand_s; TYPE_1__ tek; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  root_secret_b; int /*<<< orphan*/  root_secret_a; } ;
struct eap_method_ret {int /*<<< orphan*/  ignore; } ;

/* Variables and functions */
 scalar_t__ CHALLENGE ; 
 scalar_t__ CONFIRM ; 
 int EAP_SAKE_AT_MIC_P ; 
 int /*<<< orphan*/  EAP_SAKE_AT_PEERID ; 
 int /*<<< orphan*/  EAP_SAKE_AT_RAND_P ; 
 int EAP_SAKE_MIC_LEN ; 
 int EAP_SAKE_RAND_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_SUBTYPE_CHALLENGE ; 
 scalar_t__ IDENTITY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct wpabuf* FUNC1 (struct eap_sake_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,size_t,struct eap_sake_parse_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sake_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC16 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC18(struct eap_sm *sm,
						  struct eap_sake_data *data,
						  struct eap_method_ret *ret,
						  u8 id,
						  const u8 *payload,
						  size_t payload_len)
{
	struct eap_sake_parse_attr attr;
	struct wpabuf *resp;
	u8 *rpos;
	size_t rlen;

	if (data->state != IDENTITY && data->state != CHALLENGE) {
		FUNC12(MSG_DEBUG, "EAP-SAKE: Request/Challenge received "
			   "in unexpected state (%d)", data->state);
		ret->ignore = TRUE;
		return NULL;
	}
	if (data->state == IDENTITY)
		FUNC5(data, CHALLENGE);

	FUNC12(MSG_DEBUG, "EAP-SAKE: Received Request/Challenge");

	if (FUNC4(payload, payload_len, &attr))
		return NULL;

	if (!attr.rand_s) {
		FUNC12(MSG_INFO, "EAP-SAKE: Request/Challenge did not "
			   "include AT_RAND_S");
		return NULL;
	}

	FUNC7(data->rand_s, attr.rand_s, EAP_SAKE_RAND_LEN);
	FUNC10(MSG_MSGDUMP, "EAP-SAKE: RAND_S (server rand)",
		    data->rand_s, EAP_SAKE_RAND_LEN);

	if (FUNC9(data->rand_p, EAP_SAKE_RAND_LEN)) {
		FUNC12(MSG_ERROR, "EAP-SAKE: Failed to get random data");
		return NULL;
	}
	FUNC10(MSG_MSGDUMP, "EAP-SAKE: RAND_P (peer rand)",
		    data->rand_p, EAP_SAKE_RAND_LEN);

	FUNC6(data->serverid);
	data->serverid = NULL;
	data->serverid_len = 0;
	if (attr.serverid) {
		FUNC11(MSG_MSGDUMP, "EAP-SAKE: SERVERID",
				  attr.serverid, attr.serverid_len);
		data->serverid = FUNC8(attr.serverid, attr.serverid_len);
		if (data->serverid == NULL)
			return NULL;
		data->serverid_len = attr.serverid_len;
	}

	if (FUNC3(data->root_secret_a, data->root_secret_b,
				 data->rand_s, data->rand_p,
				 (u8 *) &data->tek, data->msk,
				 data->emsk) < 0) {
		FUNC12(MSG_INFO, "EAP-SAKE: Failed to derive keys");
		return NULL;
	}

	FUNC12(MSG_DEBUG, "EAP-SAKE: Sending Response/Challenge");

	rlen = 2 + EAP_SAKE_RAND_LEN + 2 + EAP_SAKE_MIC_LEN;
	if (data->peerid)
		rlen += 2 + data->peerid_len;
	resp = FUNC1(data, id, rlen, EAP_SAKE_SUBTYPE_CHALLENGE);
	if (resp == NULL)
		return NULL;

	FUNC12(MSG_DEBUG, "EAP-SAKE: * AT_RAND_P");
	FUNC0(resp, EAP_SAKE_AT_RAND_P,
			  data->rand_p, EAP_SAKE_RAND_LEN);

	if (data->peerid) {
		FUNC12(MSG_DEBUG, "EAP-SAKE: * AT_PEERID");
		FUNC0(resp, EAP_SAKE_AT_PEERID,
				  data->peerid, data->peerid_len);
	}

	FUNC12(MSG_DEBUG, "EAP-SAKE: * AT_MIC_P");
	FUNC17(resp, EAP_SAKE_AT_MIC_P);
	FUNC17(resp, 2 + EAP_SAKE_MIC_LEN);
	rpos = FUNC16(resp, EAP_SAKE_MIC_LEN);
	if (FUNC2(data->tek.auth, data->rand_s, data->rand_p,
				 data->serverid, data->serverid_len,
				 data->peerid, data->peerid_len, 1,
				 FUNC14(resp), FUNC15(resp), rpos,
				 rpos)) {
		FUNC12(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
		FUNC13(resp);
		return NULL;
	}

	FUNC5(data, CONFIRM);

	return resp;
}