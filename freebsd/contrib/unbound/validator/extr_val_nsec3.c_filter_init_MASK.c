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
struct TYPE_2__ {size_t dname_len; int /*<<< orphan*/ * dname; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qclass; scalar_t__ qtype; int /*<<< orphan*/ * qname; } ;
struct nsec3_filter {size_t zone_len; size_t num; scalar_t__ fclass; int /*<<< orphan*/ * zone; struct ub_packed_rrset_key** list; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nsec3_filter* filter, struct ub_packed_rrset_key** list,
	size_t num, struct query_info* qinfo)
{
	size_t i;
	uint8_t* nm;
	size_t nmlen;
	filter->zone = NULL;
	filter->zone_len = 0;
	filter->list = list;
	filter->num = num;
	filter->fclass = qinfo->qclass;
	for(i=0; i<num; i++) {
		/* ignore other stuff in the list */
		if(FUNC4(list[i]->rk.type) != LDNS_RR_TYPE_NSEC3 ||
			FUNC4(list[i]->rk.rrset_class) != qinfo->qclass) 
			continue;
		/* skip unknown flags, algo */
		if(!FUNC3(list[i]))
			continue;

		/* since NSEC3s are base32.zonename, we can find the zone
		 * name by stripping off the first label of the record */
		nm = list[i]->rk.dname;
		nmlen = list[i]->rk.dname_len;
		FUNC1(&nm, &nmlen);
		/* if we find a domain that can prove about the qname,
		 * and if this domain is closer to the qname */
		if(FUNC2(qinfo->qname, nm) && (!filter->zone ||
			FUNC2(nm, filter->zone))) {
			/* for a type DS do not accept a zone equal to qname*/
			if(qinfo->qtype == LDNS_RR_TYPE_DS && 
				FUNC5(qinfo->qname, nm) == 0 &&
				!FUNC0(qinfo->qname))
				continue;
			filter->zone = nm;
			filter->zone_len = nmlen;
		}
	}
}