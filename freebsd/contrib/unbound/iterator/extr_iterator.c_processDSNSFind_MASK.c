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
struct module_qstate {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; scalar_t__ qname; } ;
struct iter_qstate {scalar_t__ dsns_point; TYPE_2__ qchase; int /*<<< orphan*/  dsns_point_len; int /*<<< orphan*/  state; TYPE_1__* dp; } ;
struct TYPE_3__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSNS_FIND_STATE ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  QUERYTARGETS_STATE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,char*,scalar_t__) ; 
 int FUNC3 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct module_qstate* qstate, struct iter_qstate* iq, int id)
{
	struct module_qstate* subq = NULL;
	FUNC7(VERB_ALGO, "processDSNSFind");

	if(!iq->dsns_point) {
		/* initialize */
		iq->dsns_point = iq->qchase.qname;
		iq->dsns_point_len = iq->qchase.qname_len;
	}
	/* robustcheck for internal error: we are not underneath the dp */
	if(!FUNC1(iq->dsns_point, iq->dp->name)) {
		FUNC2(qstate, "for DS query parent-child nameserver search the query is not under the zone", iq->dp->name);
		return FUNC3(qstate, id, LDNS_RCODE_SERVFAIL);
	}

	/* go up one (more) step, until we hit the dp, if so, end */
	FUNC0(&iq->dsns_point, &iq->dsns_point_len);
	if(FUNC6(iq->dsns_point, iq->dp->name) == 0) {
		/* there was no inbetween nameserver, use the old delegation
		 * point again.  And this time, because dsns_point is nonNULL
		 * we are going to accept the (bad) result */
		iq->state = QUERYTARGETS_STATE;
		return 1;
	}
	iq->state = DSNS_FIND_STATE;

	/* spawn NS lookup (validation not needed, this is for DS lookup) */
	FUNC5(VERB_ALGO, "fetch nameservers", 
		iq->dsns_point, LDNS_RR_TYPE_NS, iq->qchase.qclass);
	if(!FUNC4(iq->dsns_point, iq->dsns_point_len, 
		LDNS_RR_TYPE_NS, iq->qchase.qclass, qstate, id, iq,
		INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0)) {
		FUNC2(qstate, "for DS query parent-child nameserver search, could not generate NS lookup for", iq->dsns_point);
		return FUNC3(qstate, id, LDNS_RCODE_SERVFAIL);
	}

	return 0;
}