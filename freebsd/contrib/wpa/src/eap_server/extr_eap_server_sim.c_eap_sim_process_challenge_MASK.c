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
struct eap_sim_data {int num_chal; int use_result_ind; int /*<<< orphan*/ * next_reauth_id; int /*<<< orphan*/  mk; scalar_t__ counter; int /*<<< orphan*/  permanent; int /*<<< orphan*/ * next_pseudonym; int /*<<< orphan*/  notification; scalar_t__ sres; int /*<<< orphan*/  k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 int EAP_SIM_SRES_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct eap_sm *sm,
				      struct eap_sim_data *data,
				      struct wpabuf *respData,
				      struct eap_sim_attrs *attr)
{
	if (attr->mac == NULL ||
	    FUNC3(data->k_aut, respData, attr->mac,
			       (u8 *) data->sres,
			       data->num_chal * EAP_SIM_SRES_LEN)) {
		FUNC4(MSG_WARNING, "EAP-SIM: Challenge message "
			   "did not include valid AT_MAC");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC2(data, NOTIFICATION);
		return;
	}

	FUNC4(MSG_DEBUG, "EAP-SIM: Challenge response includes the "
		   "correct AT_MAC");
	if (sm->eap_sim_aka_result_ind && attr->result_ind) {
		data->use_result_ind = 1;
		data->notification = EAP_SIM_SUCCESS;
		FUNC2(data, NOTIFICATION);
	} else
		FUNC2(data, SUCCESS);

	if (data->next_pseudonym) {
		FUNC0(sm->eap_sim_db_priv, data->permanent,
					 data->next_pseudonym);
		data->next_pseudonym = NULL;
	}
	if (data->next_reauth_id) {
		FUNC1(sm->eap_sim_db_priv, data->permanent,
				      data->next_reauth_id, data->counter + 1,
				      data->mk);
		data->next_reauth_id = NULL;
	}
}