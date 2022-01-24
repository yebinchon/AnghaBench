#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_5__ {scalar_t__ rrsets; TYPE_2__* nsec_signatures; int /*<<< orphan*/ * nsec; } ;
typedef  TYPE_1__ ldns_dnssec_name ;
struct TYPE_6__ {int /*<<< orphan*/ * rr; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC7(ldns_dnssec_name *name,
				    ldns_rr *rr)
{
	ldns_status result = LDNS_STATUS_OK;
	ldns_rr_type rr_type;
	ldns_rr_type typecovered = 0;

	/* special handling for NSEC3 and NSECX covering RRSIGS */

	if (!name || !rr) {
		return LDNS_STATUS_ERR;
	}

	rr_type = FUNC5(rr);

	if (rr_type == LDNS_RR_TYPE_RRSIG) {
		typecovered = FUNC4(FUNC6(rr));
	}

	if (rr_type == LDNS_RR_TYPE_NSEC ||
	    rr_type == LDNS_RR_TYPE_NSEC3) {
		/* XX check if is already set (and error?) */
		name->nsec = rr;
	} else if (typecovered == LDNS_RR_TYPE_NSEC ||
			 typecovered == LDNS_RR_TYPE_NSEC3) {
		if (name->nsec_signatures) {
			result = FUNC0(name->nsec_signatures, rr);
		} else {
			name->nsec_signatures = FUNC1();
			name->nsec_signatures->rr = rr;
		}
	} else {
		/* it's a 'normal' RR, add it to the right rrset */
		if (name->rrsets) {
			result = FUNC2(name->rrsets, rr);
		} else {
			name->rrsets = FUNC3();
			result = FUNC2(name->rrsets, rr);
		}
	}
	return result;
}