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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

ldns_rr *
FUNC11(ldns_rdf *cur_owner, ldns_rdf *next_owner, ldns_rr_list *rrs)
{
	/* we do not do any check here - garbage in, garbage out */

	/* the the start and end names - get the type from the
	 * before rrlist */

	/* inefficient, just give it a name, a next name, and a list of rrs */
	/* we make 1 big uberbitmap first, then windows */
	/* todo: make something more efficient :) */
	uint16_t i;
	ldns_rr *i_rr;
	uint16_t i_type;

	ldns_rr *nsec = NULL;
	ldns_rr_type i_type_list[65536];
	size_t type_count = 0;

	nsec = FUNC6();
	FUNC10(nsec, LDNS_RR_TYPE_NSEC);
	FUNC9(nsec, FUNC1(cur_owner));
	FUNC8(nsec, FUNC1(next_owner));

	for (i = 0; i < FUNC5(rrs); i++) {
		i_rr = FUNC4(rrs, i);
		if (FUNC2(cur_owner,
						 FUNC7(i_rr)) == 0) {
			i_type = FUNC3(i_rr);
			if (i_type != LDNS_RR_TYPE_RRSIG && i_type != LDNS_RR_TYPE_NSEC) {
				if (type_count == 0 || i_type_list[type_count-1] != i_type) {
					i_type_list[type_count] = i_type;
					type_count++;
				}
			}
		}
	}

	i_type_list[type_count] = LDNS_RR_TYPE_RRSIG;
	type_count++;
	i_type_list[type_count] = LDNS_RR_TYPE_NSEC;
	type_count++;

	FUNC8(nsec,
				  FUNC0(i_type_list,
						type_count, LDNS_RR_TYPE_NSEC));

	return nsec;
}