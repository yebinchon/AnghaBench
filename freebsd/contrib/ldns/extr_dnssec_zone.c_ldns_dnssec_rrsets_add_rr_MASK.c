#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_7__ {scalar_t__ type; TYPE_6__* rrs; TYPE_6__* signatures; struct TYPE_7__* next; } ;
typedef  TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_8__ {int /*<<< orphan*/ * rr; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 void* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC8(ldns_dnssec_rrsets *rrsets, ldns_rr *rr)
{
	ldns_dnssec_rrsets *new_rrsets;
	ldns_rr_type rr_type;
	bool rrsig = false;
	ldns_status result = LDNS_STATUS_OK;

	if (!rrsets || !rr) {
		return LDNS_STATUS_ERR;
	}

	rr_type = FUNC6(rr);

	if (rr_type == LDNS_RR_TYPE_RRSIG) {
		rrsig = true;
		rr_type = FUNC5(FUNC7(rr));
	}

	if (!rrsets->rrs && rrsets->type == 0 && !rrsets->signatures) {
		if (!rrsig) {
			rrsets->rrs = FUNC1();
			rrsets->rrs->rr = rr;
			rrsets->type = rr_type;
		} else {
			rrsets->signatures = FUNC1();
			rrsets->signatures->rr = rr;
			rrsets->type = rr_type;
		}
		return LDNS_STATUS_OK;
	}

	if (rr_type > FUNC4(rrsets)) {
		if (rrsets->next) {
			result = FUNC8(rrsets->next, rr);
		} else {
			new_rrsets = FUNC3(rr);
			rrsets->next = new_rrsets;
		}
	} else if (rr_type < FUNC4(rrsets)) {
		/* move the current one into the new next, 
		   replace field of current with data from new rr */
		new_rrsets = FUNC2();
		new_rrsets->rrs = rrsets->rrs;
		new_rrsets->type = rrsets->type;
		new_rrsets->signatures = rrsets->signatures;
		new_rrsets->next = rrsets->next;
		if (!rrsig) {
			rrsets->rrs = FUNC1();
			rrsets->rrs->rr = rr;
			rrsets->signatures = NULL;
		} else {
			rrsets->rrs = NULL;
			rrsets->signatures = FUNC1();
			rrsets->signatures->rr = rr;
		}
		rrsets->type = rr_type;
		rrsets->next = new_rrsets;
	} else {
		/* equal, add to current rrsets */
		if (rrsig) {
			if (rrsets->signatures) {
				result = FUNC0(rrsets->signatures, rr);
			} else {
				rrsets->signatures = FUNC1();
				rrsets->signatures->rr = rr;
			}
		} else {
			if (rrsets->rrs) {
				result = FUNC0(rrsets->rrs, rr);
			} else {
				rrsets->rrs = FUNC1();
				rrsets->rrs->rr = rr;
			}
		}
	}

	return result;
}