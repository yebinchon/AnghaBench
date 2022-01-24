#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_qstate {int query_flags; TYPE_3__ qinfo; TYPE_2__* env; scalar_t__* minfo; } ;
struct TYPE_4__ {scalar_t__ qclass; } ;
struct iter_qstate {scalar_t__ num_current_queries; TYPE_1__ qchase; } ;
struct TYPE_5__ {int /*<<< orphan*/  fwds; int /*<<< orphan*/  hints; } ;

/* Variables and functions */
 int BIT_CD ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  LDNS_RCODE_REFUSED ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_CLASS_ANY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,char*) ; 
 int FUNC1 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct module_qstate* qstate, int id)
{
	struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
	struct module_qstate* subq;
	/* If qchase.qclass == 0 then send out queries for all classes.
	 * Otherwise, do nothing (wait for all answers to arrive and the
	 * processClassResponse to put them together, and that moves us
	 * towards the Finished state when done. */
	if(iq->qchase.qclass == 0) {
		uint16_t c = 0;
		iq->qchase.qclass = LDNS_RR_CLASS_ANY;
		while(FUNC3(qstate->env->hints,
			qstate->env->fwds, &c)) {
			/* generate query for this class */
			FUNC4(VERB_ALGO, "spawn collect query",
				qstate->qinfo.qname, qstate->qinfo.qtype, c);
			if(!FUNC2(qstate->qinfo.qname,
				qstate->qinfo.qname_len, qstate->qinfo.qtype,
				c, qstate, id, iq, INIT_REQUEST_STATE,
				FINISHED_STATE, &subq, 
				(int)!(qstate->query_flags&BIT_CD))) {
				FUNC0(qstate, "could not generate class ANY"
					" lookup query");
				return FUNC1(qstate, id, 
					LDNS_RCODE_SERVFAIL);
			}
			/* ignore subq, no special init required */
			iq->num_current_queries ++;
			if(c == 0xffff)
				break;
			else c++;
		}
		/* if no roots are configured at all, return */
		if(iq->num_current_queries == 0) {
			FUNC5(VERB_ALGO, "No root hints or fwds, giving up "
				"on qclass ANY");
			return FUNC1(qstate, id, LDNS_RCODE_REFUSED);
		}
		/* return false, wait for queries to return */
	}
	/* if woke up here because of an answer, wait for more answers */
	return 0;
}