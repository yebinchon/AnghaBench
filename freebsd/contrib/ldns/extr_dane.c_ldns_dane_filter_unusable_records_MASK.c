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
 scalar_t__ LDNS_RR_TYPE_TLSA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ldns_rr_list*
FUNC9(const ldns_rr_list* tlsas)
{
	size_t i;
	ldns_rr_list* r = FUNC3();
	ldns_rr* tlsa_rr;

	if (! r) {
		return NULL;
	}
	for (i = 0; i < FUNC6(tlsas); i++) {
		tlsa_rr = FUNC5(tlsas, i);
		if (FUNC1(tlsa_rr) == LDNS_RR_TYPE_TLSA &&
		    FUNC7(tlsa_rr) == 4 &&
		    FUNC0(FUNC8(tlsa_rr, 0)) <= 3 &&
		    FUNC0(FUNC8(tlsa_rr, 1)) <= 1 &&
		    FUNC0(FUNC8(tlsa_rr, 2)) <= 2) {

			if (! FUNC4(r, tlsa_rr)) {
				FUNC2(r);
				return NULL;
			}
		}
	}
	return r;
}