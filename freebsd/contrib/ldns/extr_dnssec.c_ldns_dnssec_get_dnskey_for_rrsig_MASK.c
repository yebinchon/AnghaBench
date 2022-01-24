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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

ldns_rr *
FUNC9(const ldns_rr *rrsig,
						   const ldns_rr_list *rrs)
{
	size_t i;
	ldns_rr *candidate;

	if (!rrsig || !rrs) {
		return NULL;
	}

	for (i = 0; i < FUNC5(rrs); i++) {
		candidate = FUNC4(rrs, i);
		if (FUNC3(candidate) == LDNS_RR_TYPE_DNSKEY) {
			if (FUNC1(FUNC6(candidate),
			                       FUNC8(rrsig)) == 0 &&
			    FUNC2(FUNC7(rrsig)) ==
			    FUNC0(candidate)
			    ) {
				return candidate;
			}
		}
	}

	return NULL;
}