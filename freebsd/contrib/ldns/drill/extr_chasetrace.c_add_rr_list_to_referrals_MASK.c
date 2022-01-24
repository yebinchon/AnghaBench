#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_dnssec_zone ;
struct TYPE_4__ {TYPE_2__* rrs; } ;
typedef  TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_5__ {int /*<<< orphan*/  rr; struct TYPE_5__* next; } ;
typedef  TYPE_2__ ldns_dnssec_rrs ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int verbosity ; 

__attribute__((used)) static void FUNC8(
    ldns_dnssec_zone *referrals, ldns_rr_list *rr_list)
{
	size_t i;
	ldns_rr *rr;
	ldns_dnssec_rrsets *rrset;
	ldns_dnssec_rrs *rrs;

	for (i = 0; i < FUNC5(rr_list); i++) {
		rr = FUNC4(rr_list, i);
		/* Check if a RR equal to "rr" is present in "referrals" */
		rrset = FUNC1(
		    referrals, FUNC6(rr), FUNC3(rr));
		if (rrset) {
			for (rrs = rrset->rrs; rrs; rrs = rrs->next)
				if (FUNC2(rr, rrs->rr) == 0)
					break;
			if (rrs) continue; /* "rr" is present, next! */
		}
		if (FUNC3(rr) == LDNS_RR_TYPE_NS && verbosity != -1)
			FUNC7(stdout, rr);
		(void) FUNC0(referrals, rr);
	}
}