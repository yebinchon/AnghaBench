#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ qtype; int /*<<< orphan*/  qname; } ;
struct module_qstate {int query_flags; TYPE_6__* env; int /*<<< orphan*/  region; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct TYPE_8__ {int /*<<< orphan*/  qclass; } ;
struct iter_qstate {scalar_t__ depth; int refetch_glue; TYPE_3__* dp; TYPE_2__ qchase; } ;
struct iter_env {scalar_t__ max_dependency_depth; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* kill_sub ) (struct module_qstate*) ;scalar_t__* modinfo; } ;
struct TYPE_9__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BIT_CD ; 
 int BIT_RD ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct module_qstate*)) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,struct iter_qstate*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(struct module_qstate* qstate, struct iter_qstate* iq, int id)
{
	struct iter_env* ie = (struct iter_env*)qstate->env->modinfo[id];
	struct module_qstate* subq;
	FUNC6(iq->dp);

	if(iq->depth == ie->max_dependency_depth)
		return;
	if(!FUNC0(qstate->env, iq->dp->name, iq->dp->namelen,
		iq->qchase.qclass, NULL))
		return;
	/* is this query the same as the nscheck? */
	if(qstate->qinfo.qtype == LDNS_RR_TYPE_NS &&
		FUNC9(iq->dp->name, qstate->qinfo.qname)==0 &&
		(qstate->query_flags&BIT_RD) && !(qstate->query_flags&BIT_CD)){
		/* spawn off A, AAAA queries for in-zone glue to check */
		FUNC4(qstate, iq, id);
		return;
	}
	/* no need to get the NS record for DS, it is above the zonecut */
	if(qstate->qinfo.qtype == LDNS_RR_TYPE_DS)
		return;

	FUNC8(VERB_ALGO, "schedule ns fetch", 
		iq->dp->name, LDNS_RR_TYPE_NS, iq->qchase.qclass);
	if(!FUNC5(iq->dp->name, iq->dp->namelen, 
		LDNS_RR_TYPE_NS, iq->qchase.qclass, qstate, id, iq,
		INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
		FUNC11(VERB_ALGO, "could not generate ns check");
		return;
	}
	if(subq) {
		struct iter_qstate* subiq = 
			(struct iter_qstate*)subq->minfo[id];

		/* make copy to avoid use of stub dp by different qs/threads */
		/* refetch glue to start higher up the tree */
		subiq->refetch_glue = 1;
		subiq->dp = FUNC1(iq->dp, subq->region);
		if(!subiq->dp) {
			FUNC7("out of memory generating ns check, copydp");
			FUNC2(FUNC3(
				qstate->env->kill_sub));
			(*qstate->env->kill_sub)(subq);
			return;
		}
	}
}