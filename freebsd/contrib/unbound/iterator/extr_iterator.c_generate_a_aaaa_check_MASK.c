#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_4__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct TYPE_7__ {scalar_t__ qtype; scalar_t__ qclass; int /*<<< orphan*/  qname; } ;
struct module_qstate {int query_flags; TYPE_3__ qinfo; TYPE_1__* env; } ;
struct iter_qstate {scalar_t__ depth; int /*<<< orphan*/  dp; TYPE_2__* response; } ;
struct iter_env {scalar_t__ max_dependency_depth; } ;
struct TYPE_6__ {struct reply_info* rep; } ;
struct TYPE_5__ {scalar_t__* modinfo; } ;

/* Variables and functions */
 int BIT_CD ; 
 int BIT_RD ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct module_qstate* qstate, struct iter_qstate* iq, 
	int id)
{
	struct iter_env* ie = (struct iter_env*)qstate->env->modinfo[id];
	struct module_qstate* subq;
	size_t i;
	struct reply_info* rep = iq->response->rep;
	struct ub_packed_rrset_key* s;
	FUNC1(iq->dp);

	if(iq->depth == ie->max_dependency_depth)
		return;
	/* walk through additional, and check if in-zone,
	 * only relevant A, AAAA are left after scrub anyway */
	for(i=rep->an_numrrsets+rep->ns_numrrsets; i<rep->rrset_count; i++) {
		s = rep->rrsets[i];
		/* check *ALL* addresses that are transmitted in additional*/
		/* is it an address ? */
		if( !(FUNC3(s->rk.type)==LDNS_RR_TYPE_A ||
			FUNC3(s->rk.type)==LDNS_RR_TYPE_AAAA)) {
			continue;
		}
		/* is this query the same as the A/AAAA check for it */
		if(qstate->qinfo.qtype == FUNC3(s->rk.type) &&
			qstate->qinfo.qclass == FUNC3(s->rk.rrset_class) &&
			FUNC4(qstate->qinfo.qname, 
				s->rk.dname)==0 &&
			(qstate->query_flags&BIT_RD) && 
			!(qstate->query_flags&BIT_CD))
			continue;

		/* generate subrequest for it */
		FUNC2(VERB_ALGO, "schedule addr fetch", 
			s->rk.dname, FUNC3(s->rk.type), 
			FUNC3(s->rk.rrset_class));
		if(!FUNC0(s->rk.dname, s->rk.dname_len, 
			FUNC3(s->rk.type), FUNC3(s->rk.rrset_class),
			qstate, id, iq,
			INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
			FUNC5(VERB_ALGO, "could not generate addr check");
			return;
		}
		/* ignore subq - not need for more init */
	}
}