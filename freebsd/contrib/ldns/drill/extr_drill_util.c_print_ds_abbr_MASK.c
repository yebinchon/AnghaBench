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
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(FILE *fp, ldns_rr *ds)
{
	if (!ds || (FUNC2(ds) != LDNS_RR_TYPE_DS)) {
		return;
	}

	FUNC1(fp, FUNC3(ds));
	FUNC0(fp, " %d", (int)FUNC5(ds));
	FUNC6(fp, ds);
	FUNC1(fp, FUNC4(ds, 0)); FUNC0(fp, " ");
	FUNC1(fp, FUNC4(ds, 1)); FUNC0(fp, " ");
	FUNC1(fp, FUNC4(ds, 2)); FUNC0(fp, " ");
	FUNC1(fp, FUNC4(ds, 3)); FUNC0(fp, " ");
}