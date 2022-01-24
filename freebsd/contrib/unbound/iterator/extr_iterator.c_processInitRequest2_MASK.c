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
typedef  int /*<<< orphan*/  uint8_t ;
struct module_qstate {TYPE_1__* env; int /*<<< orphan*/  qinfo; } ;
struct TYPE_7__ {size_t qname_len; scalar_t__ qtype; int /*<<< orphan*/  qclass; int /*<<< orphan*/ * qname; } ;
struct iter_qstate {TYPE_3__ qchase; scalar_t__ refetch_glue; TYPE_4__* dp; } ;
struct iter_hints_stub {TYPE_2__* dp; } ;
struct TYPE_8__ {size_t namelen; int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  has_parent_side_NS; } ;
struct TYPE_5__ {int /*<<< orphan*/  hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_REQUEST_3_STATE ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,struct iter_qstate*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,char*) ; 
 int FUNC5 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 struct iter_hints_stub* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct iter_qstate*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct module_qstate*,struct iter_qstate*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct module_qstate* qstate, struct iter_qstate* iq,
	int id)
{
	uint8_t* delname;
	size_t delnamelen;
	FUNC8(VERB_QUERY, "resolving (init part 2): ", 
		&qstate->qinfo);

	delname = iq->qchase.qname;
	delnamelen = iq->qchase.qname_len;
	if(iq->refetch_glue) {
		struct iter_hints_stub* stub;
		if(!iq->dp) {
			FUNC7("internal or malloc fail: no dp for refetch");
			FUNC4(qstate, "malloc failure, no delegation info");
			return FUNC5(qstate, id, LDNS_RCODE_SERVFAIL);
		}
		/* Do not send queries above stub, do not set delname to dp if
		 * this is above stub without stub-first. */
		stub = FUNC6(
			qstate->env->hints, iq->qchase.qname, iq->qchase.qclass,
			iq->dp);
		if(!stub || !stub->dp->has_parent_side_NS || 
			FUNC3(iq->dp->name, stub->dp->name)) {
			delname = iq->dp->name;
			delnamelen = iq->dp->namelen;
		}
	}
	if(iq->qchase.qtype == LDNS_RR_TYPE_DS || iq->refetch_glue) {
		if(!FUNC1(delname))
			FUNC2(&delname, &delnamelen);
		iq->refetch_glue = 0; /* if CNAME causes restart, no refetch */
	}

	/* see if we have an auth zone to answer from, improves dp from cache
	 * (if any dp from cache) with auth zone dp, if that is lower */
	if(!FUNC0(qstate, iq, delname, delnamelen))
		return FUNC5(qstate, id, LDNS_RCODE_SERVFAIL);

	/* Check to see if we need to prime a stub zone. */
	if(FUNC10(qstate, iq, id, delname, iq->qchase.qclass)) {
		/* A priming sub request was made */
		return 0;
	}

	/* most events just get forwarded to the next state. */
	return FUNC9(iq, INIT_REQUEST_3_STATE);
}