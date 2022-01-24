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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ mschapv2_retry; } ;
struct eap_mschapv2_hdr {int op_code; int /*<<< orphan*/  mschapv2_id; } ;
struct eap_mschapv2_data {scalar_t__ prev_error; struct wpabuf* prev_challenge; } ;
struct eap_method_ret {void* ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ ERROR_AUTHENTICATION_FAILURE ; 
#define  MSCHAPV2_OP_CHALLENGE 130 
#define  MSCHAPV2_OP_FAILURE 129 
#define  MSCHAPV2_OP_SUCCESS 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct eap_sm*) ; 
 scalar_t__ FUNC5 (struct eap_sm*,size_t,struct eap_mschapv2_hdr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_mschapv2_data*,struct wpabuf const*) ; 
 struct wpabuf* FUNC7 (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC8 (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_sm *sm, void *priv,
					    struct eap_method_ret *ret,
					    const struct wpabuf *reqData)
{
	struct eap_mschapv2_data *data = priv;
	struct eap_peer_config *config = FUNC0(sm);
	const struct eap_mschapv2_hdr *ms;
	int using_prev_challenge = 0;
	const u8 *pos;
	size_t len;
	u8 id;

	if (FUNC4(sm)) {
		ret->ignore = TRUE;
		return NULL;
	}

	if (config->mschapv2_retry && data->prev_challenge &&
	    data->prev_error == ERROR_AUTHENTICATION_FAILURE) {
		FUNC9(MSG_DEBUG, "EAP-MSCHAPV2: Replacing pending packet "
			   "with the previous challenge");

		reqData = data->prev_challenge;
		using_prev_challenge = 1;
		config->mschapv2_retry = 0;
	}

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, reqData,
			       &len);
	if (pos == NULL || len < sizeof(*ms) + 1) {
		ret->ignore = TRUE;
		return NULL;
	}

	ms = (const struct eap_mschapv2_hdr *) pos;
	if (FUNC5(sm, len, ms)) {
		ret->ignore = TRUE;
		return NULL;
	}

	id = FUNC1(reqData);
	FUNC9(MSG_DEBUG, "EAP-MSCHAPV2: RX identifier %d mschapv2_id %d",
		   id, ms->mschapv2_id);

	switch (ms->op_code) {
	case MSCHAPV2_OP_CHALLENGE:
		if (!using_prev_challenge)
			FUNC6(data, reqData);
		return FUNC3(sm, data, ret, ms, len, id);
	case MSCHAPV2_OP_SUCCESS:
		return FUNC8(sm, data, ret, ms, len, id);
	case MSCHAPV2_OP_FAILURE:
		return FUNC7(sm, data, ret, ms, len, id);
	default:
		FUNC9(MSG_INFO, "EAP-MSCHAPV2: Unknown op %d - ignored",
			   ms->op_code);
		ret->ignore = TRUE;
		return NULL;
	}
}