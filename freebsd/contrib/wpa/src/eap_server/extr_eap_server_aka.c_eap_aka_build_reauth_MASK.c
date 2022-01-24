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
struct eap_aka_data {int /*<<< orphan*/  reauth_mac; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  eap_method; int /*<<< orphan*/  nonce_s; int /*<<< orphan*/  counter; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  mk; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  k_re; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_SUBTYPE_REAUTHENTICATION ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_RESULT_IND ; 
 scalar_t__ EAP_SIM_MAC_LEN ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,struct eap_sim_msg*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_aka_data*,struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC16(struct eap_sm *sm,
					    struct eap_aka_data *data, u8 id)
{
	struct eap_sim_msg *msg;
	struct wpabuf *buf;

	FUNC13(MSG_DEBUG, "EAP-AKA: Generating Re-authentication");

	if (FUNC11(data->nonce_s, EAP_SIM_NONCE_S_LEN))
		return NULL;
	FUNC12(MSG_MSGDUMP, "EAP-AKA: NONCE_S",
			data->nonce_s, EAP_SIM_NONCE_S_LEN);

	if (data->eap_method == EAP_TYPE_AKA_PRIME) {
		FUNC2(data->k_re, data->counter,
						 sm->identity,
						 sm->identity_len,
						 data->nonce_s,
						 data->msk, data->emsk);
	} else {
		FUNC3(data->mk, data->k_encr, data->k_aut,
				    data->msk, data->emsk);
		FUNC4(data->counter, sm->identity,
					   sm->identity_len, data->nonce_s,
					   data->mk, data->msk, data->emsk);
	}

	msg = FUNC9(EAP_CODE_REQUEST, id, data->eap_method,
			       EAP_AKA_SUBTYPE_REAUTHENTICATION);

	if (FUNC1(sm, data, msg, data->counter, data->nonce_s)) {
		FUNC8(msg);
		return NULL;
	}

	FUNC0(data, msg);

	if (sm->eap_sim_aka_result_ind) {
		FUNC13(MSG_DEBUG, "   AT_RESULT_IND");
		FUNC5(msg, EAP_SIM_AT_RESULT_IND, 0, NULL, 0);
	}

	FUNC13(MSG_DEBUG, "   AT_MAC");
	FUNC6(msg, EAP_SIM_AT_MAC);
	buf = FUNC7(msg, data->eap_method, data->k_aut, NULL, 0);

	/* Remember this MAC before sending it to the peer. This MAC is used for
	 * Session-Id calculation after receiving response from the peer and
	 * after all other checks pass. */
	FUNC10(data->reauth_mac,
		  FUNC14(buf) + FUNC15(buf) - EAP_SIM_MAC_LEN,
		  EAP_SIM_MAC_LEN);

	return buf;
}