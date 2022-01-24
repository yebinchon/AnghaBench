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
struct eap_sim_data {scalar_t__ reauth; int /*<<< orphan*/  k_aut; } ;
struct eap_sim_attrs {int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ FUNC0 (struct eap_sim_data*,struct eap_sim_attrs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct wpabuf const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct eap_sim_data *data,
					     const struct wpabuf *reqData,
					     struct eap_sim_attrs *attr)
{
	if (attr->mac == NULL) {
		FUNC2(MSG_INFO, "EAP-SIM: no AT_MAC in after_auth "
			   "Notification message");
		return -1;
	}

	if (FUNC1(data->k_aut, reqData, attr->mac, (u8 *) "", 0))
	{
		FUNC2(MSG_WARNING, "EAP-SIM: Notification message "
			   "used invalid AT_MAC");
		return -1;
	}

	if (data->reauth &&
	    FUNC0(data, attr)) {
		FUNC2(MSG_WARNING, "EAP-SIM: Invalid notification "
			   "message after reauth");
		return -1;
	}

	return 0;
}