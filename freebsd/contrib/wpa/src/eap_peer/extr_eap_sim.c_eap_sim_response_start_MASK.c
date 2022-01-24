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
typedef  size_t u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int reauth; size_t* reauth_id; size_t reauth_id_len; size_t* pseudonym; size_t pseudonym_len; size_t const* nonce_mt; size_t selected_version; } ;
typedef  enum eap_sim_id_req { ____Placeholder_eap_sim_id_req } eap_sim_id_req ;

/* Variables and functions */
 int ANY_ID ; 
 int CLEAR_EAP_ID ; 
 int CLEAR_PSEUDONYM ; 
 int CLEAR_REAUTH_ID ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_SIM_AT_IDENTITY ; 
 int /*<<< orphan*/  EAP_SIM_AT_NONCE_MT ; 
 int /*<<< orphan*/  EAP_SIM_AT_SELECTED_VERSION ; 
 size_t EAP_SIM_NONCE_MT_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUBTYPE_START ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int FULLAUTH_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int NO_ID_REQ ; 
 size_t* FUNC0 (struct eap_sm*,size_t*) ; 
 scalar_t__ FUNC1 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_sim_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,size_t,size_t const*,size_t) ; 
 struct wpabuf* FUNC4 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct eap_sim_msg* FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_sm *sm,
					      struct eap_sim_data *data, u8 id,
					      enum eap_sim_id_req id_req)
{
	const u8 *identity = NULL;
	size_t identity_len = 0;
	struct eap_sim_msg *msg;

	data->reauth = 0;
	if (id_req == ANY_ID && data->reauth_id) {
		identity = data->reauth_id;
		identity_len = data->reauth_id_len;
		data->reauth = 1;
	} else if ((id_req == ANY_ID || id_req == FULLAUTH_ID) &&
		   data->pseudonym &&
		   !FUNC1(data->pseudonym,
					       data->pseudonym_len)) {
		identity = data->pseudonym;
		identity_len = data->pseudonym_len;
		FUNC2(sm, data, CLEAR_REAUTH_ID);
	} else if (id_req != NO_ID_REQ) {
		identity = FUNC0(sm, &identity_len);
		if (identity) {
			int ids = CLEAR_PSEUDONYM | CLEAR_REAUTH_ID;

			if (data->pseudonym &&
			    FUNC1(data->pseudonym,
						       data->pseudonym_len))
				ids &= ~CLEAR_PSEUDONYM;
			FUNC2(sm, data, ids);
		}
	}
	if (id_req != NO_ID_REQ)
		FUNC2(sm, data, CLEAR_EAP_ID);

	FUNC8(MSG_DEBUG, "Generating EAP-SIM Start (id=%d)", id);
	msg = FUNC5(EAP_CODE_RESPONSE, id,
			       EAP_TYPE_SIM, EAP_SIM_SUBTYPE_START);
	if (!data->reauth) {
		FUNC6(MSG_DEBUG, "   AT_NONCE_MT",
			    data->nonce_mt, EAP_SIM_NONCE_MT_LEN);
		FUNC3(msg, EAP_SIM_AT_NONCE_MT, 0,
				data->nonce_mt, EAP_SIM_NONCE_MT_LEN);
		FUNC8(MSG_DEBUG, "   AT_SELECTED_VERSION %d",
			   data->selected_version);
		FUNC3(msg, EAP_SIM_AT_SELECTED_VERSION,
				data->selected_version, NULL, 0);
	}

	if (identity) {
		FUNC7(MSG_DEBUG, "   AT_IDENTITY",
				  identity, identity_len);
		FUNC3(msg, EAP_SIM_AT_IDENTITY, identity_len,
				identity, identity_len);
	}

	return FUNC4(msg, EAP_TYPE_SIM, NULL, NULL, 0);
}