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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int PF_OPT_SHOWALL ; 
 int /*<<< orphan*/  classes ; 
 int fingerprint_count ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

void
FUNC5(int opts)
{
	if (FUNC0(&classes) != NULL) {
		if (opts & PF_OPT_SHOWALL) {
			FUNC1("OS FINGERPRINTS:");
			FUNC3("%u fingerprints loaded\n", fingerprint_count);
		} else {
			FUNC3("Class\tVersion\tSubtype(subversion)\n");
			FUNC3("-----\t-------\t-------------------\n");
			FUNC4(opts, &classes);
			FUNC2(opts, &classes, "");
		}
	}
}