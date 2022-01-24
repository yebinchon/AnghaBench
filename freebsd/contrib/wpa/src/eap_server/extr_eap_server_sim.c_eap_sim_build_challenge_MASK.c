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
struct eap_sm {scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int num_chal; int /*<<< orphan*/  nonce_mt; int /*<<< orphan*/  k_aut; scalar_t__ rand; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_RAND ; 
 int /*<<< orphan*/  EAP_SIM_AT_RESULT_IND ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_MT_LEN ; 
 int /*<<< orphan*/  EAP_SIM_SUBTYPE_CHALLENGE ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int GSM_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_sim_data*,struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC7(struct eap_sm *sm,
					       struct eap_sim_data *data,
					       u8 id)
{
	struct eap_sim_msg *msg;

	FUNC6(MSG_DEBUG, "EAP-SIM: Generating Challenge");
	msg = FUNC5(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
			       EAP_SIM_SUBTYPE_CHALLENGE);
	FUNC6(MSG_DEBUG, "   AT_RAND");
	FUNC1(msg, EAP_SIM_AT_RAND, 0, (u8 *) data->rand,
			data->num_chal * GSM_RAND_LEN);

	if (FUNC0(sm, data, msg, 0, NULL)) {
		FUNC4(msg);
		return NULL;
	}

	if (sm->eap_sim_aka_result_ind) {
		FUNC6(MSG_DEBUG, "   AT_RESULT_IND");
		FUNC1(msg, EAP_SIM_AT_RESULT_IND, 0, NULL, 0);
	}

	FUNC6(MSG_DEBUG, "   AT_MAC");
	FUNC2(msg, EAP_SIM_AT_MAC);
	return FUNC3(msg, EAP_TYPE_SIM, data->k_aut,
				  data->nonce_mt, EAP_SIM_NONCE_MT_LEN);
}