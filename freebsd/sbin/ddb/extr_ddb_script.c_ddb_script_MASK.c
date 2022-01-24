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
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  SYSCTL_SCRIPT ; 
 int /*<<< orphan*/  SYSCTL_SCRIPTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(int argc, char *argv[])
{

	if (argc != 2)
		FUNC5();
	argv++;
	argc--;
	if (FUNC2(argv[0], '=') != 0) {
		if (FUNC4(SYSCTL_SCRIPT, NULL, NULL, argv[0],
		    FUNC3(argv[0]) + 1) < 0)
			FUNC1(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
	} else
		FUNC0(argv[0]);
}