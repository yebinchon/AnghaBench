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
struct eap_aka_data {int /*<<< orphan*/  eap_method; scalar_t__ num_notification; scalar_t__ num_id_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_SUBTYPE_CLIENT_ERROR ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_SIM_AT_CLIENT_ERROR_CODE ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sim_msg*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct eap_sim_msg* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_aka_data *data, u8 id,
					    int err)
{
	struct eap_sim_msg *msg;

	FUNC0(data, FAILURE);
	data->num_id_req = 0;
	data->num_notification = 0;

	FUNC4(MSG_DEBUG, "EAP-AKA: Send Client-Error (error code %d)",
		   err);
	msg = FUNC3(EAP_CODE_RESPONSE, id, data->eap_method,
			       EAP_AKA_SUBTYPE_CLIENT_ERROR);
	FUNC1(msg, EAP_SIM_AT_CLIENT_ERROR_CODE, err, NULL, 0);
	return FUNC2(msg, data->eap_method, NULL, NULL, 0);
}