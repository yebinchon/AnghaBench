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
struct eap_sm {int /*<<< orphan*/  eap_sim_db_priv; scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_data {int start_round; int use_result_ind; int /*<<< orphan*/ * reauth; int /*<<< orphan*/  notification; int /*<<< orphan*/ * next_reauth_id; int /*<<< orphan*/  mk; int /*<<< orphan*/  counter; int /*<<< orphan*/  permanent; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  nonce_s; int /*<<< orphan*/  k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; scalar_t__ counter_too_small; int /*<<< orphan*/  counter; int /*<<< orphan*/ * iv; int /*<<< orphan*/  encr_data_len; int /*<<< orphan*/ * encr_data; int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  START ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
				   struct eap_sim_data *data,
				   struct wpabuf *respData,
				   struct eap_sim_attrs *attr)
{
	struct eap_sim_attrs eattr;
	u8 *decrypted = NULL;

	if (attr->mac == NULL ||
	    FUNC4(data->k_aut, respData, attr->mac, data->nonce_s,
			       EAP_SIM_NONCE_S_LEN)) {
		FUNC6(MSG_WARNING, "EAP-SIM: Re-authentication message "
			   "did not include valid AT_MAC");
		goto fail;
	}

	if (attr->encr_data == NULL || attr->iv == NULL) {
		FUNC6(MSG_WARNING, "EAP-SIM: Reauthentication "
			   "message did not include encrypted data");
		goto fail;
	}

	decrypted = FUNC2(data->k_encr, attr->encr_data,
				       attr->encr_data_len, attr->iv, &eattr,
				       0);
	if (decrypted == NULL) {
		FUNC6(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
			   "data from reauthentication message");
		goto fail;
	}

	if (eattr.counter != data->counter) {
		FUNC6(MSG_WARNING, "EAP-SIM: Re-authentication message "
			   "used incorrect counter %u, expected %u",
			   eattr.counter, data->counter);
		goto fail;
	}
	FUNC5(decrypted);
	decrypted = NULL;

	FUNC6(MSG_DEBUG, "EAP-SIM: Re-authentication response includes "
		   "the correct AT_MAC");

	if (eattr.counter_too_small) {
		FUNC6(MSG_DEBUG, "EAP-AKA: Re-authentication response "
			   "included AT_COUNTER_TOO_SMALL - starting full "
			   "authentication");
		data->start_round = -1;
		FUNC3(data, START);
		return;
	}

	if (sm->eap_sim_aka_result_ind && attr->result_ind) {
		data->use_result_ind = 1;
		data->notification = EAP_SIM_SUCCESS;
		FUNC3(data, NOTIFICATION);
	} else
		FUNC3(data, SUCCESS);

	if (data->next_reauth_id) {
		FUNC0(sm->eap_sim_db_priv, data->permanent,
				      data->next_reauth_id,
				      data->counter + 1, data->mk);
		data->next_reauth_id = NULL;
	} else {
		FUNC1(sm->eap_sim_db_priv, data->reauth);
		data->reauth = NULL;
	}

	return;

fail:
	data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
	FUNC3(data, NOTIFICATION);
	FUNC1(sm->eap_sim_db_priv, data->reauth);
	data->reauth = NULL;
	FUNC5(decrypted);
}