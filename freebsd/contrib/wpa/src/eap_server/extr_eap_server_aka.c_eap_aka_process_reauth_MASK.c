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
struct eap_sim_attrs {scalar_t__ result_ind; scalar_t__ counter_too_small; int /*<<< orphan*/  counter; int /*<<< orphan*/ * iv; int /*<<< orphan*/  encr_data_len; int /*<<< orphan*/ * encr_data; int /*<<< orphan*/ * mac; } ;
struct eap_aka_data {int use_result_ind; scalar_t__ eap_method; int /*<<< orphan*/ * reauth; int /*<<< orphan*/  notification; int /*<<< orphan*/ * next_reauth_id; int /*<<< orphan*/  mk; int /*<<< orphan*/  counter; int /*<<< orphan*/  permanent; int /*<<< orphan*/  k_re; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  nonce_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUCCESS ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_aka_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_aka_data*,struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm,
				   struct eap_aka_data *data,
				   struct wpabuf *respData,
				   struct eap_sim_attrs *attr)
{
	struct eap_sim_attrs eattr;
	u8 *decrypted = NULL;

	FUNC8(MSG_DEBUG, "EAP-AKA: Processing Reauthentication");

	if (attr->mac == NULL ||
	    FUNC2(data, respData, attr->mac, data->nonce_s,
			       EAP_SIM_NONCE_S_LEN)) {
		FUNC8(MSG_WARNING, "EAP-AKA: Re-authentication message "
			   "did not include valid AT_MAC");
		goto fail;
	}

	if (attr->encr_data == NULL || attr->iv == NULL) {
		FUNC8(MSG_WARNING, "EAP-AKA: Reauthentication "
			   "message did not include encrypted data");
		goto fail;
	}

	decrypted = FUNC6(data->k_encr, attr->encr_data,
				       attr->encr_data_len, attr->iv, &eattr,
				       0);
	if (decrypted == NULL) {
		FUNC8(MSG_WARNING, "EAP-AKA: Failed to parse encrypted "
			   "data from reauthentication message");
		goto fail;
	}

	if (eattr.counter != data->counter) {
		FUNC8(MSG_WARNING, "EAP-AKA: Re-authentication message "
			   "used incorrect counter %u, expected %u",
			   eattr.counter, data->counter);
		goto fail;
	}
	FUNC7(decrypted);
	decrypted = NULL;

	FUNC8(MSG_DEBUG, "EAP-AKA: Re-authentication response includes "
		   "the correct AT_MAC");

	if (eattr.counter_too_small) {
		FUNC8(MSG_DEBUG, "EAP-AKA: Re-authentication response "
			   "included AT_COUNTER_TOO_SMALL - starting full "
			   "authentication");
		FUNC0(sm, data);
		return;
	}

	if (sm->eap_sim_aka_result_ind && attr->result_ind) {
		data->use_result_ind = 1;
		data->notification = EAP_SIM_SUCCESS;
		FUNC1(data, NOTIFICATION);
	} else
		FUNC1(data, SUCCESS);

	if (data->next_reauth_id) {
		if (data->eap_method == EAP_TYPE_AKA_PRIME) {
#ifdef EAP_SERVER_AKA_PRIME
			eap_sim_db_add_reauth_prime(sm->eap_sim_db_priv,
						    data->permanent,
						    data->next_reauth_id,
						    data->counter + 1,
						    data->k_encr, data->k_aut,
						    data->k_re);
#endif /* EAP_SERVER_AKA_PRIME */
		} else {
			FUNC3(sm->eap_sim_db_priv,
					      data->permanent,
					      data->next_reauth_id,
					      data->counter + 1,
					      data->mk);
		}
		data->next_reauth_id = NULL;
	} else {
		FUNC5(sm->eap_sim_db_priv, data->reauth);
		data->reauth = NULL;
	}

	return;

fail:
	data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
	FUNC1(data, NOTIFICATION);
	FUNC5(sm->eap_sim_db_priv, data->reauth);
	data->reauth = NULL;
	FUNC7(decrypted);
}