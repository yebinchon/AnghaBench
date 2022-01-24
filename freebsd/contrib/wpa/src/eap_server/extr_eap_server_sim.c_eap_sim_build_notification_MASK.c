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
struct eap_sm {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int /*<<< orphan*/  k_aut; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  counter; scalar_t__ reauth; scalar_t__ use_result_ind; int /*<<< orphan*/  notification; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_SIM_AT_COUNTER ; 
 int /*<<< orphan*/  EAP_SIM_AT_ENCR_DATA ; 
 int /*<<< orphan*/  EAP_SIM_AT_IV ; 
 int /*<<< orphan*/  EAP_SIM_AT_MAC ; 
 int /*<<< orphan*/  EAP_SIM_AT_NOTIFICATION ; 
 int /*<<< orphan*/  EAP_SIM_AT_PADDING ; 
 int /*<<< orphan*/  EAP_SIM_SUBTYPE_NOTIFICATION ; 
 int /*<<< orphan*/  EAP_TYPE_SIM ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_msg*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC4 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct eap_sm *sm,
						  struct eap_sim_data *data,
						  u8 id)
{
	struct eap_sim_msg *msg;

	FUNC7(MSG_DEBUG, "EAP-SIM: Generating Notification");
	msg = FUNC6(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
			       EAP_SIM_SUBTYPE_NOTIFICATION);
	FUNC7(MSG_DEBUG, "   AT_NOTIFICATION (%d)", data->notification);
	FUNC0(msg, EAP_SIM_AT_NOTIFICATION, data->notification,
			NULL, 0);
	if (data->use_result_ind) {
		if (data->reauth) {
			FUNC7(MSG_DEBUG, "   AT_IV");
			FUNC7(MSG_DEBUG, "   AT_ENCR_DATA");
			FUNC2(msg, EAP_SIM_AT_IV,
						   EAP_SIM_AT_ENCR_DATA);
			FUNC7(MSG_DEBUG, "   *AT_COUNTER (%u)",
				   data->counter);
			FUNC0(msg, EAP_SIM_AT_COUNTER, data->counter,
					NULL, 0);

			if (FUNC1(msg, data->k_encr,
						     EAP_SIM_AT_PADDING)) {
				FUNC7(MSG_WARNING, "EAP-SIM: Failed to "
					   "encrypt AT_ENCR_DATA");
				FUNC5(msg);
				return NULL;
			}
		}

		FUNC7(MSG_DEBUG, "   AT_MAC");
		FUNC3(msg, EAP_SIM_AT_MAC);
	}
	return FUNC4(msg, EAP_TYPE_SIM, data->k_aut, NULL, 0);
}