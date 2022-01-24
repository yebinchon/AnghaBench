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
struct eap_sm {scalar_t__ eap_sim_aka_result_ind; int /*<<< orphan*/  identity_len; int /*<<< orphan*/  identity; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int /*<<< orphan*/  reauth_mac; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  nonce_s; int /*<<< orphan*/  counter; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  mk; int /*<<< orphan*/  k_encr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_RESULT_IND ; 
 scalar_t__ EAP_SIM_MAC_LEN ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUBTYPE_REAUTHENTICATION ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_sim_data*,struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct eap_sm *sm,
					    struct eap_sim_data *data, u8 id)
{
	struct eap_sim_msg *msg;
	struct wpabuf *buf;

	FUNC11(MSG_DEBUG, "EAP-SIM: Generating Re-authentication");

	if (FUNC9(data->nonce_s, EAP_SIM_NONCE_S_LEN))
		return NULL;
	FUNC10(MSG_MSGDUMP, "EAP-SIM: NONCE_S",
			data->nonce_s, EAP_SIM_NONCE_S_LEN);

	FUNC1(data->mk, data->k_encr, data->k_aut, data->msk,
			    data->emsk);
	FUNC2(data->counter, sm->identity,
				   sm->identity_len, data->nonce_s, data->mk,
				   data->msk, data->emsk);

	msg = FUNC7(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
			       EAP_SIM_SUBTYPE_REAUTHENTICATION);

	if (FUNC0(sm, data, msg, data->counter, data->nonce_s)) {
		FUNC6(msg);
		return NULL;
	}

	if (sm->eap_sim_aka_result_ind) {
		FUNC11(MSG_DEBUG, "   AT_RESULT_IND");
		FUNC3(msg, EAP_SIM_AT_RESULT_IND, 0, NULL, 0);
	}

	FUNC11(MSG_DEBUG, "   AT_MAC");
	FUNC4(msg, EAP_SIM_AT_MAC);
	buf = FUNC5(msg, EAP_TYPE_SIM, data->k_aut, NULL, 0);

	/* Remember this MAC before sending it to the peer. This MAC is used for
	 * Session-Id calculation after receiving response from the peer and
	 * after all other checks pass. */
	FUNC8(data->reauth_mac,
		  FUNC12(buf) + FUNC13(buf) - EAP_SIM_MAC_LEN,
		  EAP_SIM_MAC_LEN);

	return buf;
}