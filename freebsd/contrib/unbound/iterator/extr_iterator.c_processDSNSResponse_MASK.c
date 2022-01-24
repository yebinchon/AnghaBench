#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_qstate {scalar_t__ return_rcode; int /*<<< orphan*/  region; TYPE_2__* return_msg; TYPE_1__ qinfo; scalar_t__* minfo; } ;
struct iter_qstate {int /*<<< orphan*/  dp; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  rep; } ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  QUERYTARGETS_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct module_qstate* qstate, int id,
	struct module_qstate* forq)
{
	struct iter_qstate* foriq = (struct iter_qstate*)forq->minfo[id];

	/* if the finished (iq->response) query has no NS set: continue
	 * up to look for the right dp; nothing to change, do DPNSstate */
	if(qstate->return_rcode != LDNS_RCODE_NOERROR)
		return; /* seek further */
	/* find the NS RRset (without allowing CNAMEs) */
	if(!FUNC3(qstate->return_msg->rep, qstate->qinfo.qname,
		qstate->qinfo.qname_len, LDNS_RR_TYPE_NS,
		qstate->qinfo.qclass)){
		return; /* seek further */
	}

	/* else, store as DP and continue at querytargets */
	foriq->state = QUERYTARGETS_STATE;
	foriq->dp = FUNC0(qstate->return_msg, forq->region);
	if(!foriq->dp) {
		FUNC2("out of memory in dsns dp alloc");
		FUNC1(qstate, "malloc failure, in DS search");
		return; /* dp==NULL in QUERYTARGETS makes SERVFAIL */
	}
	/* success, go query the querytargets in the new dp (and go down) */
}