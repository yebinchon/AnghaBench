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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct module_qstate {int dummy; } ;
struct TYPE_4__ {size_t qname_len; int /*<<< orphan*/ * qname; } ;
struct iter_qstate {TYPE_1__ qchase; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_5__ {size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DNAME ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct iter_qstate*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,struct iter_qstate*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct iter_qstate*,struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct module_qstate* qstate, struct iter_qstate* iq,
        struct dns_msg* msg, uint8_t** mname, size_t* mname_len)
{
	size_t i;
	/* Start with the (current) qname. */
	*mname = iq->qchase.qname;
	*mname_len = iq->qchase.qname_len;

	/* Iterate over the ANSWER rrsets in order, looking for CNAMEs and 
	 * DNAMES. */
	for(i=0; i<msg->rep->an_numrrsets; i++) {
		struct ub_packed_rrset_key* r = msg->rep->rrsets[i];
		/* If there is a (relevant) DNAME, add it to the list.
		 * We always expect there to be CNAME that was generated 
		 * by this DNAME following, so we don't process the DNAME 
		 * directly.  */
		if(FUNC5(r->rk.type) == LDNS_RR_TYPE_DNAME &&
			FUNC0(*mname, r->rk.dname) &&
			!FUNC4(iq, r)) {
			if(!FUNC2(qstate, iq, r))
				return 0;
			continue;
		}

		if(FUNC5(r->rk.type) == LDNS_RR_TYPE_CNAME &&
			FUNC6(*mname, r->rk.dname) == 0 &&
			!FUNC4(iq, r)) {
			/* Add this relevant CNAME rrset to the prepend list.*/
			if(!FUNC2(qstate, iq, r))
				return 0;
			FUNC1(r, mname, mname_len);
		}

		/* Other rrsets in the section are ignored. */
	}
	/* add authority rrsets to authority prepend, for wildcarded CNAMEs */
	for(i=msg->rep->an_numrrsets; i<msg->rep->an_numrrsets +
		msg->rep->ns_numrrsets; i++) {
		struct ub_packed_rrset_key* r = msg->rep->rrsets[i];
		/* only add NSEC/NSEC3, as they may be needed for validation */
		if(FUNC5(r->rk.type) == LDNS_RR_TYPE_NSEC ||
			FUNC5(r->rk.type) == LDNS_RR_TYPE_NSEC3) {
			if(!FUNC3(qstate, iq, r))
				return 0;
		}
	}
	return 1;
}