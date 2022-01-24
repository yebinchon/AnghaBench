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
struct eapol_sm {scalar_t__ cb_status; TYPE_1__* ctx; int /*<<< orphan*/  eap; void* changed; int /*<<< orphan*/  eap_proxy; scalar_t__ use_eap_proxy; } ;
typedef  enum eapol_supp_result { ____Placeholder_eapol_supp_result } eapol_supp_result ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* cb ) (struct eapol_sm*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ EAPOL_CB_IN_PROGRESS ; 
 scalar_t__ EAPOL_CB_SUCCESS ; 
 int EAPOL_SUPP_RESULT_EXPECTED_FAILURE ; 
 int EAPOL_SUPP_RESULT_FAILURE ; 
 int EAPOL_SUPP_RESULT_SUCCESS ; 
 void* FALSE ; 
 int /*<<< orphan*/  KEY_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUPP_BE ; 
 int /*<<< orphan*/  SUPP_PAE ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eapol_sm_step_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC6 (struct eapol_sm*,int,int /*<<< orphan*/ ) ; 

void FUNC7(struct eapol_sm *sm)
{
	int i;

	/* In theory, it should be ok to run this in loop until !changed.
	 * However, it is better to use a limit on number of iterations to
	 * allow events (e.g., SIGTERM) to stop the program cleanly if the
	 * state machine were to generate a busy loop. */
	for (i = 0; i < 100; i++) {
		sm->changed = FALSE;
		FUNC0(SUPP_PAE);
		FUNC0(KEY_RX);
		FUNC0(SUPP_BE);
#ifdef CONFIG_EAP_PROXY
		if (sm->use_eap_proxy) {
			/* Drive the EAP proxy state machine */
			if (eap_proxy_sm_step(sm->eap_proxy, sm->eap))
				sm->changed = TRUE;
		} else
#endif /* CONFIG_EAP_PROXY */
		if (FUNC1(sm->eap))
			sm->changed = TRUE;
		if (!sm->changed)
			break;
	}

	if (sm->changed) {
		/* restart EAPOL state machine step from timeout call in order
		 * to allow other events to be processed. */
		FUNC4(eapol_sm_step_timeout, NULL, sm);
		FUNC5(0, 0, eapol_sm_step_timeout, NULL, sm);
	}

	if (sm->ctx->cb && sm->cb_status != EAPOL_CB_IN_PROGRESS) {
		enum eapol_supp_result result;
		if (sm->cb_status == EAPOL_CB_SUCCESS)
			result = EAPOL_SUPP_RESULT_SUCCESS;
		else if (FUNC2(sm->eap))
			result = EAPOL_SUPP_RESULT_EXPECTED_FAILURE;
		else
			result = EAPOL_SUPP_RESULT_FAILURE;
		sm->cb_status = EAPOL_CB_IN_PROGRESS;
		sm->ctx->cb(sm, result, sm->ctx->cb_ctx);
	}
}