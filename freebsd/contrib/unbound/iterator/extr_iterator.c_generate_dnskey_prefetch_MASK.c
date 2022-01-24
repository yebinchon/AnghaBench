#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ qtype; int /*<<< orphan*/  qname; } ;
struct module_qstate {int query_flags; int /*<<< orphan*/  region; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/  qclass; } ;
struct iter_qstate {TYPE_3__* dp; TYPE_2__ qchase; } ;
struct TYPE_8__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BIT_CD ; 
 int BIT_RD ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct module_qstate* qstate, 
	struct iter_qstate* iq, int id)
{
	struct module_qstate* subq;
	FUNC2(iq->dp);

	/* is this query the same as the prefetch? */
	if(qstate->qinfo.qtype == LDNS_RR_TYPE_DNSKEY &&
		FUNC4(iq->dp->name, qstate->qinfo.qname)==0 &&
		(qstate->query_flags&BIT_RD) && !(qstate->query_flags&BIT_CD)){
		return;
	}

	/* if the DNSKEY is in the cache this lookup will stop quickly */
	FUNC3(VERB_ALGO, "schedule dnskey prefetch", 
		iq->dp->name, LDNS_RR_TYPE_DNSKEY, iq->qchase.qclass);
	if(!FUNC1(iq->dp->name, iq->dp->namelen, 
		LDNS_RR_TYPE_DNSKEY, iq->qchase.qclass, qstate, id, iq,
		INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0)) {
		/* we'll be slower, but it'll work */
		FUNC5(VERB_ALGO, "could not generate dnskey prefetch");
		return;
	}
	if(subq) {
		struct iter_qstate* subiq = 
			(struct iter_qstate*)subq->minfo[id];
		/* this qstate has the right delegation for the dnskey lookup*/
		/* make copy to avoid use of stub dp by different qs/threads */
		subiq->dp = FUNC0(iq->dp, subq->region);
		/* if !subiq->dp, it'll start from the cache, no problem */
	}
}