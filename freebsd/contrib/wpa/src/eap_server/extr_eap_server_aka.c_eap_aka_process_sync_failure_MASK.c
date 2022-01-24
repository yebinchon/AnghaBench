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
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  eap_sim_db_priv; } ;
struct eap_sim_attrs {int /*<<< orphan*/ * auts; } ;
struct eap_aka_data {int auts_reported; void* notification; int /*<<< orphan*/  rand; int /*<<< orphan*/  permanent; } ;

/* Variables and functions */
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_aka_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_aka_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm,
					 struct eap_aka_data *data,
					 struct wpabuf *respData,
					 struct eap_sim_attrs *attr)
{
	FUNC3(MSG_DEBUG, "EAP-AKA: Processing Synchronization-Failure");

	if (attr->auts == NULL) {
		FUNC3(MSG_WARNING, "EAP-AKA: Synchronization-Failure "
			   "message did not include valid AT_AUTS");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC1(data, NOTIFICATION);
		return;
	}

	/* Avoid re-reporting AUTS when processing pending EAP packet by
	 * maintaining a local flag stating whether this AUTS has already been
	 * reported. */
	if (!data->auts_reported &&
	    FUNC2(sm->eap_sim_db_priv, data->permanent,
				     attr->auts, data->rand)) {
		FUNC3(MSG_WARNING, "EAP-AKA: Resynchronization failed");
		data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
		FUNC1(data, NOTIFICATION);
		return;
	}
	data->auts_reported = 1;

	/* Remain in CHALLENGE state to re-try after resynchronization */
	FUNC0(sm, data);
}