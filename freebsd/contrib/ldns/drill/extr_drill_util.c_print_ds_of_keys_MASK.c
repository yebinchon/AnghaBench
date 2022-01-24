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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SHA1 ; 
 int /*<<< orphan*/  LDNS_SHA256 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC8(ldns_pkt *p)
{
	ldns_rr_list *keys;
	uint16_t i;
	ldns_rr *ds;

	/* TODO fix the section stuff, here or in ldns */
	keys = FUNC3(p, LDNS_RR_TYPE_DNSKEY,
			LDNS_SECTION_ANSWER);

	/* this also returns the question section rr, which does not
	 * have any data.... and this inturn crashes everything */

	if (keys) {
		for (i = 0; i < FUNC6(keys); i++) {
			FUNC0(stdout, ";\n; equivalent DS records for key %u:\n",
				(unsigned int)FUNC1(FUNC5(keys, i)));

			ds = FUNC2(FUNC5(keys, i), LDNS_SHA1);
			FUNC7(stdout, "; sha1: ", ds);
			ds = FUNC2(FUNC5(keys, i), LDNS_SHA256);
			FUNC7(stdout, "; sha256: ", ds);
		}
		FUNC4(keys);
	}
}