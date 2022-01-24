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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*) ; 
 int FUNC9 (char*) ; 

ldns_status
FUNC10(ldns_rr_list *nsec3_rrs)
{
	size_t i;
	char *next_nsec_owner_str;
	ldns_rdf *next_nsec_owner_label;
	ldns_rdf *next_nsec_rdf;
	ldns_status status = LDNS_STATUS_OK;

	for (i = 0; i < FUNC5(nsec3_rrs); i++) {
		if (i == FUNC5(nsec3_rrs) - 1) {
			next_nsec_owner_label =
				FUNC1(FUNC6(FUNC4(nsec3_rrs,
													  0)), 0);
			next_nsec_owner_str = FUNC2(next_nsec_owner_label);
			if (next_nsec_owner_str[FUNC9(next_nsec_owner_str) - 1]
			    == '.') {
				next_nsec_owner_str[FUNC9(next_nsec_owner_str) - 1]
					= '\0';
			}
			status = FUNC8(&next_nsec_rdf,
									next_nsec_owner_str);
			if (!FUNC7(FUNC4(nsec3_rrs, i),
							 next_nsec_rdf, 4)) {
				/* todo: error */
			}

			FUNC3(next_nsec_owner_label);
			FUNC0(next_nsec_owner_str);
		} else {
			next_nsec_owner_label =
				FUNC1(FUNC6(FUNC4(nsec3_rrs,
													  i + 1)),
							  0);
			next_nsec_owner_str = FUNC2(next_nsec_owner_label);
			if (next_nsec_owner_str[FUNC9(next_nsec_owner_str) - 1]
			    == '.') {
				next_nsec_owner_str[FUNC9(next_nsec_owner_str) - 1]
					= '\0';
			}
			status = FUNC8(&next_nsec_rdf,
									next_nsec_owner_str);
			FUNC3(next_nsec_owner_label);
			FUNC0(next_nsec_owner_str);
			if (!FUNC7(FUNC4(nsec3_rrs, i),
							 next_nsec_rdf, 4)) {
				/* todo: error */
			}
		}
	}
	return status;
}