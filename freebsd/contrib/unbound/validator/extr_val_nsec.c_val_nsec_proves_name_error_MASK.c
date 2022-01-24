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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int 
FUNC6(struct ub_packed_rrset_key* nsec, uint8_t* qname)
{
	uint8_t* owner = nsec->rk.dname;
	uint8_t* next;
	size_t nlen;
	if(!FUNC3(nsec, &next, &nlen))
		return 0;

	/* If NSEC owner == qname, then this NSEC proves that qname exists. */
	if(FUNC5(qname, owner) == 0) {
		return 0;
	}

	/* If NSEC is a parent of qname, we need to check the type map
	 * If the parent name has a DNAME or is a delegation point, then 
	 * this NSEC is being misused. */
	if(FUNC2(qname, owner) && 
		(FUNC4(nsec, LDNS_RR_TYPE_DNAME) ||
		(FUNC4(nsec, LDNS_RR_TYPE_NS) 
			&& !FUNC4(nsec, LDNS_RR_TYPE_SOA))
		)) {
		return 0;
	}

	if(FUNC5(owner, next) == 0) {
		/* this nsec is the only nsec */
		/* zone.name NSEC zone.name, disproves everything else */
		/* but only for subdomains of that zone */
		if(FUNC1(qname, next))
			return 1;
	}
	else if(FUNC0(owner, next) > 0) {
		/* this is the last nsec, ....(bigger) NSEC zonename(smaller) */
		/* the names after the last (owner) name do not exist 
		 * there are no names before the zone name in the zone 
		 * but the qname must be a subdomain of the zone name(next). */
		if(FUNC0(owner, qname) < 0 &&
			FUNC1(qname, next))
			return 1;
	} else {
		/* regular NSEC, (smaller) NSEC (larger) */
		if(FUNC0(owner, qname) < 0 &&
		   FUNC0(qname, next) < 0) {
			return 1;
		}
	}
	return 0;
}