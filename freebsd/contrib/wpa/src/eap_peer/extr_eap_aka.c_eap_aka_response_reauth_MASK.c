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
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {unsigned int counter_too_small; unsigned int counter; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  eap_method; scalar_t__ use_result_ind; int /*<<< orphan*/  k_encr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_SUBTYPE_REAUTHENTICATION ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_SIM_AT_COUNTER ; 
 int /*<<< orphan*/  EAP_SIM_AT_COUNTER_TOO_SMALL ; 
 int /*<<< orphan*/  EAP_SIM_AT_ENCR_DATA ; 
 int /*<<< orphan*/  EAP_SIM_AT_IV ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_PADDING ; 
 int /*<<< orphan*/  EAP_SIM_AT_RESULT_IND ; 
 int /*<<< orphan*/  EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,struct eap_sim_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_msg*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_aka_data *data,
					       u8 id, int counter_too_small,
					       const u8 *nonce_s)
{
	struct eap_sim_msg *msg;
	unsigned int counter;

	FUNC8(MSG_DEBUG, "Generating EAP-AKA Reauthentication (id=%d)",
		   id);
	msg = FUNC7(EAP_CODE_RESPONSE, id, data->eap_method,
			       EAP_AKA_SUBTYPE_REAUTHENTICATION);
	FUNC8(MSG_DEBUG, "   AT_IV");
	FUNC8(MSG_DEBUG, "   AT_ENCR_DATA");
	FUNC3(msg, EAP_SIM_AT_IV, EAP_SIM_AT_ENCR_DATA);

	if (counter_too_small) {
		FUNC8(MSG_DEBUG, "   *AT_COUNTER_TOO_SMALL");
		FUNC1(msg, EAP_SIM_AT_COUNTER_TOO_SMALL, 0, NULL, 0);
		counter = data->counter_too_small;
	} else
		counter = data->counter;

	FUNC8(MSG_DEBUG, "   *AT_COUNTER %d", counter);
	FUNC1(msg, EAP_SIM_AT_COUNTER, counter, NULL, 0);

	if (FUNC2(msg, data->k_encr, EAP_SIM_AT_PADDING)) {
		FUNC8(MSG_WARNING, "EAP-AKA: Failed to encrypt "
			   "AT_ENCR_DATA");
		FUNC6(msg);
		return NULL;
	}
	FUNC0(data, msg);
	if (data->use_result_ind) {
		FUNC8(MSG_DEBUG, "   AT_RESULT_IND");
		FUNC1(msg, EAP_SIM_AT_RESULT_IND, 0, NULL, 0);
	}
	FUNC8(MSG_DEBUG, "   AT_MAC");
	FUNC4(msg, EAP_SIM_AT_MAC);
	return FUNC5(msg, data->eap_method, data->k_aut, nonce_s,
				  EAP_SIM_NONCE_S_LEN);
}