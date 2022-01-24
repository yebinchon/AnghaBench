#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED ; 
 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC16(ldns_rr *rr,
                          ldns_rr_list *nsecs,
                          ldns_rr_list *rrsigs)
{
	ldns_rdf *rr_name;
	ldns_rdf *wildcard_name;
	ldns_rdf *chopped_dname;
	ldns_rr *cur_nsec;
	size_t i;
	ldns_status result;
	/* needed for wildcard check on exact match */
	ldns_rr *rrsig;
	bool name_covered = false;
	bool type_covered = false;
	bool wildcard_covered = false;
	bool wildcard_type_covered = false;

	wildcard_name = FUNC4("*");
	rr_name = FUNC14(rr);
	chopped_dname = FUNC3(rr_name);
	result = FUNC0(wildcard_name, chopped_dname);
	FUNC10(chopped_dname);
	if (result != LDNS_STATUS_OK) {
		return result;
	}
	
	for  (i = 0; i < FUNC13(nsecs); i++) {
		cur_nsec = FUNC12(nsecs, i);
		if (FUNC1(rr_name, FUNC14(cur_nsec)) == 0) {
			/* see section 5.4 of RFC4035, if the label count of the NSEC's
			   RRSIG is equal, then it is proven that wildcard expansion 
			   could not have been used to match the request */
			rrsig = FUNC5(
					  FUNC14(cur_nsec),
					  FUNC11(cur_nsec),
					  rrsigs);
			if (rrsig && FUNC9(FUNC15(rrsig))
			    == FUNC2(rr_name)) {
				wildcard_covered = true;
			}
			
			if (FUNC6(FUNC8(cur_nsec),
									   FUNC11(rr))) {
				type_covered = true;
			}
		}
		if (FUNC7(cur_nsec, rr_name)) {
			name_covered = true;
		}
		
		if (FUNC1(wildcard_name,
						   FUNC14(cur_nsec)) == 0) {
			if (FUNC6(FUNC8(cur_nsec),
									   FUNC11(rr))) {
				wildcard_type_covered = true;
			}
		}
		
		if (FUNC7(cur_nsec, wildcard_name)) {
			wildcard_covered = true;
		}
		
	}
	
	FUNC10(wildcard_name);
	
	if (type_covered || !name_covered) {
		return LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;
	}
	
	if (wildcard_type_covered || !wildcard_covered) {
		return LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED;
	}

	return LDNS_STATUS_OK;
}