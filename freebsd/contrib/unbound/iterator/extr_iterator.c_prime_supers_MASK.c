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
struct module_qstate {scalar_t__ return_rcode; int /*<<< orphan*/  region; int /*<<< orphan*/  return_msg; int /*<<< orphan*/  qinfo; scalar_t__ is_priming; scalar_t__* minfo; } ;
struct iter_qstate {void* state; scalar_t__ wait_priming_stub; struct delegpt* dp; int /*<<< orphan*/  deleg_msg; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 void* INIT_REQUEST_2_STATE ; 
 void* INIT_REQUEST_3_STATE ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 void* QUERYTARGETS_STATE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 struct delegpt* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct module_qstate* qstate, int id, struct module_qstate* forq)
{
	struct iter_qstate* foriq = (struct iter_qstate*)forq->minfo[id];
	struct delegpt* dp = NULL;

	FUNC3(qstate->is_priming || foriq->wait_priming_stub);
	FUNC3(qstate->return_rcode == LDNS_RCODE_NOERROR);
	/* Convert our response to a delegation point */
	dp = FUNC0(qstate->return_msg, forq->region);
	if(!dp) {
		/* if there is no convertable delegation point, then 
		 * the ANSWER type was (presumably) a negative answer. */
		FUNC6(VERB_ALGO, "prime response was not a positive "
			"ANSWER; failing");
		foriq->dp = NULL;
		foriq->state = QUERYTARGETS_STATE;
		return;
	}

	FUNC5(VERB_DETAIL, "priming successful for", &qstate->qinfo);
	FUNC1(VERB_ALGO, dp);
	foriq->dp = dp;
	foriq->deleg_msg = FUNC2(qstate->return_msg, forq->region);
	if(!foriq->deleg_msg) {
		FUNC4("copy prime response: out of memory");
		foriq->dp = NULL;
		foriq->state = QUERYTARGETS_STATE;
		return;
	}

	/* root priming responses go to init stage 2, priming stub 
	 * responses to to stage 3. */
	if(foriq->wait_priming_stub) {
		foriq->state = INIT_REQUEST_3_STATE;
		foriq->wait_priming_stub = 0;
	} else	foriq->state = INIT_REQUEST_2_STATE;
	/* because we are finished, the parent will be reactivated */
}