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
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ const FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ldns_rr *
FUNC7(const ldns_rdf *name,
                                        const ldns_rr_type type,
                                        const ldns_rr_list *rrs)
{
	size_t i;
	ldns_rr *candidate;

	if (!name || !rrs) {
		return NULL;
	}

	for (i = 0; i < FUNC4(rrs); i++) {
		candidate = FUNC3(rrs, i);
		if (FUNC2(candidate) == LDNS_RR_TYPE_RRSIG) {
			if (FUNC0(FUNC5(candidate),
			                       name) == 0 &&
			    FUNC1(FUNC6(candidate))
			    == type
			    ) {
				return candidate;
			}
		}
	}

	return NULL;
}