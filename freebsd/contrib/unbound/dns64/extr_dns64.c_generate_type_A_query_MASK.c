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
struct query_info {int /*<<< orphan*/  qtype; } ;
struct module_qstate {int curmod; int /*<<< orphan*/ ** minfo; int /*<<< orphan*/ * ext_state; int /*<<< orphan*/  query_flags; TYPE_1__* env; struct query_info qinfo; } ;
typedef  enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_2__ {int /*<<< orphan*/  (* attach_sub ) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**)) ; 
 int module_error ; 
 int /*<<< orphan*/  module_state_initial ; 
 int module_wait_subquery ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum module_ext_state
FUNC4(struct module_qstate* qstate, int id)
{
	struct module_qstate* subq = NULL;
	struct query_info qinfo;

	FUNC3(VERB_ALGO, "dns64: query A record");

	/* Create a new query info. */
	qinfo = qstate->qinfo;
	qinfo.qtype = LDNS_RR_TYPE_A;

	/* Start the sub-query. */
	FUNC0(FUNC1(qstate->env->attach_sub));
	if(!(*qstate->env->attach_sub)(qstate, &qinfo, qstate->query_flags, 0,
				       0, &subq))
	{
		FUNC3(VERB_ALGO, "dns64: sub-query creation failed");
		return module_error;
	}
	if (subq) {
		subq->curmod = id;
		subq->ext_state[id] = module_state_initial;
		subq->minfo[id] = NULL;
	}

	return module_wait_subquery;
}