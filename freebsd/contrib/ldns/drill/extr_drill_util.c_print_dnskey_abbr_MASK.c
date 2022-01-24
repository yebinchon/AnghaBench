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
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(FILE *fp, ldns_rr *key)
{
        if (!key || (FUNC5(key) != LDNS_RR_TYPE_DNSKEY)) {
                return;
        }

        FUNC3(fp, FUNC6(key));
        FUNC0(fp, " %d", (int)FUNC8(key));
	FUNC9(fp, key);

        /* print a number of rdf's */
        /* flags */
        FUNC3(fp, FUNC7(key, 0)); FUNC0(fp, " ");
        /* proto */
        FUNC3(fp, FUNC7(key, 1)); FUNC0(fp, " ");
        /* algo */
        FUNC3(fp, FUNC7(key, 2));

	if (FUNC2(FUNC7(key, 0)) == 256) {
		FUNC0(fp, " ;{id = %u (zsk), size = %db}", (unsigned int)FUNC1(key),
				(int)FUNC4(key));
		return;
	}
	if (FUNC2(FUNC7(key, 0)) == 257) {
		FUNC0(fp, " ;{id = %u (ksk), size = %db}", (unsigned int)FUNC1(key),
				(int)FUNC4(key));
		return;
	}
	FUNC0(fp, " ;{id = %u, size = %db}", (unsigned int)FUNC1(key),
			(int)FUNC4(key));
}