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
struct TYPE_2__ {int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qtype; int /*<<< orphan*/  qname; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ub_packed_rrset_key*,scalar_t__) ; 

int FUNC3(struct ub_packed_rrset_key* nsec, 
	struct query_info* qinfo)
{
	if(FUNC2(nsec, LDNS_RR_TYPE_NS) &&
		!FUNC2(nsec, LDNS_RR_TYPE_DS) &&
		!FUNC2(nsec, LDNS_RR_TYPE_SOA)) {
		/* see if nsec signals an insecure delegation */
		if(qinfo->qtype == LDNS_RR_TYPE_DS) {
			/* if type is DS and qname is equal to nsec, then it
			 * is an exact match nsec, result not insecure */
			if(FUNC0(qinfo->qname,
				nsec->rk.dname))
				return 1;
		} else {
			if(FUNC1(qinfo->qname, nsec->rk.dname))
				return 1;
		}
	}
	return 0;
}