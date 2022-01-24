#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {scalar_t__ return_rcode; int /*<<< orphan*/  query_flags; TYPE_1__* return_msg; TYPE_2__ qinfo; int /*<<< orphan*/  env; int /*<<< orphan*/  no_cache_store; struct dns64_qstate** minfo; int /*<<< orphan*/  region; } ;
struct dns64_qstate {int /*<<< orphan*/  started_no_cache_store; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  rep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS64_SUBQUERY_FINISHED ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int,struct module_qstate*,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dns64_qstate*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct module_qstate* qstate, int id,
		struct module_qstate* super)
{
	struct dns64_qstate* super_dq = (struct dns64_qstate*)super->minfo[id];
	FUNC5(VERB_ALGO, "dns64: inform_super, sub is",
		       &qstate->qinfo);
	FUNC5(VERB_ALGO, "super is", &super->qinfo);

	/*
	 * Signal that the sub-query is finished, no matter whether we are
	 * successful or not. This lets the state machine terminate.
	 */
	if(!super_dq) {
		super_dq = (struct dns64_qstate*)FUNC7(super->region,
			sizeof(*super_dq));
		super->minfo[id] = super_dq;
		FUNC6(super_dq, 0, sizeof(*super_dq));
		super_dq->started_no_cache_store = super->no_cache_store;
	}
	super_dq->state = DNS64_SUBQUERY_FINISHED;

	/* If there is no successful answer, we're done. */
	if (qstate->return_rcode != LDNS_RCODE_NOERROR
	    || !qstate->return_msg
	    || !qstate->return_msg->rep) {
		return;
	}

	/* Use return code from A query in response to client. */
	if (super->return_rcode != LDNS_RCODE_NOERROR)
		super->return_rcode = qstate->return_rcode;

	/* Generate a response suitable for the original query. */
	if (qstate->qinfo.qtype == LDNS_RR_TYPE_A) {
		FUNC0(id, super, qstate);
	} else {
		FUNC3(qstate->qinfo.qtype == LDNS_RR_TYPE_PTR);
		FUNC1(qstate, super);
	}

	/* Store the generated response in cache. */
	if ( (!super_dq || !super_dq->started_no_cache_store) &&
		!FUNC2(super->env, &super->qinfo, super->return_msg->rep,
		0, 0, 0, NULL, super->query_flags))
		FUNC4("out of memory");
}