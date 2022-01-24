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
typedef  int /*<<< orphan*/  const u8 ;
typedef  scalar_t__ u16 ;
struct eap_sm {int eap_sim_id; int /*<<< orphan*/  eap_sim_db_priv; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {scalar_t__ counter; int /*<<< orphan*/  k_encr; int /*<<< orphan*/ * next_reauth_id; int /*<<< orphan*/ * next_pseudonym; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_AT_COUNTER ; 
 int /*<<< orphan*/  EAP_SIM_AT_ENCR_DATA ; 
 int /*<<< orphan*/  EAP_SIM_AT_IV ; 
 int /*<<< orphan*/  EAP_SIM_AT_NEXT_PSEUDONYM ; 
 int /*<<< orphan*/  EAP_SIM_AT_NEXT_REAUTH_ID ; 
 int /*<<< orphan*/  EAP_SIM_AT_NONCE_S ; 
 int /*<<< orphan*/  EAP_SIM_AT_PADDING ; 
 int /*<<< orphan*/  EAP_SIM_DB_SIM ; 
 scalar_t__ EAP_SIM_MAX_FAST_REAUTHS ; 
 scalar_t__ EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(struct eap_sm *sm, struct eap_sim_data *data,
			      struct eap_sim_msg *msg, u16 counter,
			      const u8 *nonce_s)
{
	FUNC5(data->next_pseudonym);
	if (!(sm->eap_sim_id & 0x01)) {
		/* Use of pseudonyms disabled in configuration */
		data->next_pseudonym = NULL;
	} else if (!nonce_s) {
		data->next_pseudonym =
			FUNC0(sm->eap_sim_db_priv,
						      EAP_SIM_DB_SIM);
	} else {
		/* Do not update pseudonym during re-authentication */
		data->next_pseudonym = NULL;
	}
	FUNC5(data->next_reauth_id);
	if (!(sm->eap_sim_id & 0x02)) {
		/* Use of fast reauth disabled in configuration */
		data->next_reauth_id = NULL;
	} else if (data->counter <= EAP_SIM_MAX_FAST_REAUTHS) {
		data->next_reauth_id =
			FUNC1(sm->eap_sim_db_priv,
						      EAP_SIM_DB_SIM);
	} else {
		FUNC7(MSG_DEBUG, "EAP-SIM: Max fast re-authentication "
			   "count exceeded - force full authentication");
		data->next_reauth_id = NULL;
	}

	if (data->next_pseudonym == NULL && data->next_reauth_id == NULL &&
	    counter == 0 && nonce_s == NULL)
		return 0;

	FUNC7(MSG_DEBUG, "   AT_IV");
	FUNC7(MSG_DEBUG, "   AT_ENCR_DATA");
	FUNC4(msg, EAP_SIM_AT_IV, EAP_SIM_AT_ENCR_DATA);

	if (counter > 0) {
		FUNC7(MSG_DEBUG, "   *AT_COUNTER (%u)", counter);
		FUNC2(msg, EAP_SIM_AT_COUNTER, counter, NULL, 0);
	}

	if (nonce_s) {
		FUNC7(MSG_DEBUG, "   *AT_NONCE_S");
		FUNC2(msg, EAP_SIM_AT_NONCE_S, 0, nonce_s,
				EAP_SIM_NONCE_S_LEN);
	}

	if (data->next_pseudonym) {
		FUNC7(MSG_DEBUG, "   *AT_NEXT_PSEUDONYM (%s)",
			   data->next_pseudonym);
		FUNC2(msg, EAP_SIM_AT_NEXT_PSEUDONYM,
				FUNC6(data->next_pseudonym),
				(u8 *) data->next_pseudonym,
				FUNC6(data->next_pseudonym));
	}

	if (data->next_reauth_id) {
		FUNC7(MSG_DEBUG, "   *AT_NEXT_REAUTH_ID (%s)",
			   data->next_reauth_id);
		FUNC2(msg, EAP_SIM_AT_NEXT_REAUTH_ID,
				FUNC6(data->next_reauth_id),
				(u8 *) data->next_reauth_id,
				FUNC6(data->next_reauth_id));
	}

	if (FUNC3(msg, data->k_encr, EAP_SIM_AT_PADDING)) {
		FUNC7(MSG_WARNING, "EAP-SIM: Failed to encrypt "
			   "AT_ENCR_DATA");
		return -1;
	}

	return 0;
}