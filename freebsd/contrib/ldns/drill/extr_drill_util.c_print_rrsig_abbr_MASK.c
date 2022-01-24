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
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(FILE *fp, ldns_rr *sig) {
	if (!sig || (FUNC2(sig) != LDNS_RR_TYPE_RRSIG)) {
		return;
	}

	FUNC1(fp, FUNC3(sig));
	FUNC0(fp, " %d", (int)FUNC5(sig));
	FUNC6(fp, sig);

	/* print a number of rdf's */
	/* typecovered */
	FUNC1(fp, FUNC4(sig, 0)); FUNC0(fp, " ");
	/* algo */
	FUNC1(fp, FUNC4(sig, 1)); FUNC0(fp, " ");
	/* labels */
	FUNC1(fp, FUNC4(sig, 2)); FUNC0(fp, " (\n\t\t\t");
	/* expir */
	FUNC1(fp, FUNC4(sig, 4)); FUNC0(fp, " ");
	/* incep */	
	FUNC1(fp, FUNC4(sig, 5)); FUNC0(fp, " ");
	/* key-id */	
	FUNC1(fp, FUNC4(sig, 6)); FUNC0(fp, " ");
	/* key owner */
	FUNC1(fp, FUNC4(sig, 7)); FUNC0(fp, ")");
}