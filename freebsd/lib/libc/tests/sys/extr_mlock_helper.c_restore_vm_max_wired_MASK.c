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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* VM_MAX_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 

void
FUNC6(void)
{
	FILE *fp;
	u_long saved_max_wired;

	fp = FUNC1(VM_MAX_WIRED, "r");
	if (fp == NULL) {
		FUNC3("fopen failed\n");
		return;
	}

	if (FUNC2(fp, "%lu", &saved_max_wired) != 1) {
		FUNC3("fscanf failed\n");
		FUNC0(fp);
		return;
	}

	FUNC0(fp);
	FUNC4("old value in %s: %lu\n", VM_MAX_WIRED, saved_max_wired);

	if (saved_max_wired == 0) /* This will cripple the test host */
		return;

	FUNC5(NULL, &saved_max_wired);
}