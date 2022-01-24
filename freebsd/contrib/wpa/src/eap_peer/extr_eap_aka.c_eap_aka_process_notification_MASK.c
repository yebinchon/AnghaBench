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
struct eap_sm {int /*<<< orphan*/  msg_ctx; } ;
struct eap_sim_attrs {int notification; } ;
struct eap_aka_data {scalar_t__ num_notification; int error_code; scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_UNABLE_TO_PROCESS_PACKET ; 
 int EAP_SIM_SUCCESS ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RESULT_SUCCESS ; 
 int /*<<< orphan*/  SUCCESS ; 
 struct wpabuf* FUNC0 (struct eap_aka_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct eap_aka_data*,struct wpabuf const*,struct eap_sim_attrs*) ; 
 struct wpabuf* FUNC2 (struct eap_aka_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC6(
	struct eap_sm *sm, struct eap_aka_data *data, u8 id,
	const struct wpabuf *reqData, struct eap_sim_attrs *attr)
{
	FUNC5(MSG_DEBUG, "EAP-AKA: subtype Notification");
	if (data->num_notification > 0) {
		FUNC5(MSG_INFO, "EAP-AKA: too many notification "
			   "rounds (only one allowed)");
		return FUNC0(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}
	data->num_notification++;
	if (attr->notification == -1) {
		FUNC5(MSG_INFO, "EAP-AKA: no AT_NOTIFICATION in "
			   "Notification message");
		return FUNC0(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	if ((attr->notification & 0x4000) == 0 &&
	    FUNC1(data, reqData, attr)) {
		return FUNC0(data, id,
					    EAP_AKA_UNABLE_TO_PROCESS_PACKET);
	}

	FUNC4(sm->msg_ctx, attr->notification, 1);
	if (attr->notification >= 0 && attr->notification < 32768) {
		data->error_code = attr->notification;
		FUNC3(data, FAILURE);
	} else if (attr->notification == EAP_SIM_SUCCESS &&
		   data->state == RESULT_SUCCESS)
		FUNC3(data, SUCCESS);
	return FUNC2(data, id, attr->notification);
}