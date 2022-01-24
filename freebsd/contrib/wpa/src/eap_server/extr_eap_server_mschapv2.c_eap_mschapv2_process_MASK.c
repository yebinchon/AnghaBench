#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_mschapv2_data {int state; } ;
struct TYPE_2__ {int /*<<< orphan*/ * password; } ;

/* Variables and functions */
#define  CHALLENGE 130 
 int FAILURE ; 
#define  FAILURE_REQ 129 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  SUCCESS_REQ 128 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm, void *priv,
				 struct wpabuf *respData)
{
	struct eap_mschapv2_data *data = priv;

	if (sm->user == NULL || sm->user->password == NULL) {
		FUNC3(MSG_INFO, "EAP-MSCHAPV2: Password not configured");
		data->state = FAILURE;
		return;
	}

	switch (data->state) {
	case CHALLENGE:
		FUNC1(sm, data, respData);
		break;
	case SUCCESS_REQ:
		FUNC2(sm, data, respData);
		break;
	case FAILURE_REQ:
		FUNC0(sm, data, respData);
		break;
	default:
		FUNC3(MSG_DEBUG, "EAP-MSCHAPV2: Unknown state %d in "
			   "process", data->state);
		break;
	}
}