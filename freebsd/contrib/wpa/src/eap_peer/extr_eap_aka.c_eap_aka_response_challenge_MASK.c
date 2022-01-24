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
struct eap_aka_data {int res_len; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  eap_method; scalar_t__ use_result_ind; int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_SUBTYPE_CHALLENGE ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_RES ; 
 int /*<<< orphan*/  EAP_SIM_AT_RESULT_IND ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,struct eap_sim_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_msg*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct eap_sim_msg* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_aka_data *data,
						  u8 id)
{
	struct eap_sim_msg *msg;

	FUNC5(MSG_DEBUG, "Generating EAP-AKA Challenge (id=%d)", id);
	msg = FUNC4(EAP_CODE_RESPONSE, id, data->eap_method,
			       EAP_AKA_SUBTYPE_CHALLENGE);
	FUNC5(MSG_DEBUG, "   AT_RES");
	FUNC1(msg, EAP_SIM_AT_RES, data->res_len * 8,
			data->res, data->res_len);
	FUNC0(data, msg);
	if (data->use_result_ind) {
		FUNC5(MSG_DEBUG, "   AT_RESULT_IND");
		FUNC1(msg, EAP_SIM_AT_RESULT_IND, 0, NULL, 0);
	}
	FUNC5(MSG_DEBUG, "   AT_MAC");
	FUNC2(msg, EAP_SIM_AT_MAC);
	return FUNC3(msg, data->eap_method, data->k_aut, (u8 *) "",
				  0);
}