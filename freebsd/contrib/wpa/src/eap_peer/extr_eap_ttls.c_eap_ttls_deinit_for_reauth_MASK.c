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
struct eap_ttls_data {scalar_t__ tnc_started; scalar_t__ ready_for_tnc; int /*<<< orphan*/  decision_succ; int /*<<< orphan*/ * pending_resp; int /*<<< orphan*/ * pending_phase2_req; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit_for_reauth ) (struct eap_sm*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct eap_sm *sm, void *priv)
{
	struct eap_ttls_data *data = priv;

	if (data->phase2_priv && data->phase2_method &&
	    data->phase2_method->deinit_for_reauth)
		data->phase2_method->deinit_for_reauth(sm, data->phase2_priv);
	FUNC1(data->pending_phase2_req);
	data->pending_phase2_req = NULL;
	FUNC1(data->pending_resp);
	data->pending_resp = NULL;
	data->decision_succ = DECISION_FAIL;
#ifdef EAP_TNC
	data->ready_for_tnc = 0;
	data->tnc_started = 0;
#endif /* EAP_TNC */
}