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
struct query_info {int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; } ;
struct module_qstate {TYPE_1__* env; } ;
struct iter_hints_stub {TYPE_2__* dp; } ;
struct delegpt {int no_cache; int /*<<< orphan*/  name; int /*<<< orphan*/  namelabs; } ;
struct TYPE_4__ {int no_cache; int /*<<< orphan*/  name; int /*<<< orphan*/  namelabs; } ;
struct TYPE_3__ {int /*<<< orphan*/  fwds; int /*<<< orphan*/  hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iter_hints_stub* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 

int
FUNC5(struct module_qstate *qstate, struct query_info *qinf)
{
	struct iter_hints_stub *stub;
	struct delegpt *dp;

	/* Check for stub. */
	stub = FUNC3(qstate->env->hints, qinf->qname,
	    qinf->qclass, NULL);
	dp = FUNC2(qstate->env->fwds, qinf->qname, qinf->qclass);

	/* see if forward or stub is more pertinent */
	if(stub && stub->dp && dp) {
		if(FUNC1(dp->name, dp->namelabs,
			stub->dp->name, stub->dp->namelabs)) {
			stub = NULL; /* ignore stub, forward is lower */
		} else {
			dp = NULL; /* ignore forward, stub is lower */
		}
	}

	/* check stub */
	if (stub != NULL && stub->dp != NULL) {
		if(stub->dp->no_cache) {
			char qname[255+1];
			char dpname[255+1];
			FUNC0(qinf->qname, qname);
			FUNC0(stub->dp->name, dpname);
			FUNC4(VERB_ALGO, "stub for %s %s has no_cache", qname, dpname);
		}
		return (stub->dp->no_cache);
	}

	/* Check for forward. */
	if (dp) {
		if(dp->no_cache) {
			char qname[255+1];
			char dpname[255+1];
			FUNC0(qinf->qname, qname);
			FUNC0(dp->name, dpname);
			FUNC4(VERB_ALGO, "forward for %s %s has no_cache", qname, dpname);
		}
		return (dp->no_cache);
	}
	return 0;
}