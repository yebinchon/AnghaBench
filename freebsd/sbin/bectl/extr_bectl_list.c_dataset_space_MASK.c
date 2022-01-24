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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  be ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char**) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 
 unsigned long long FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned long long
FUNC8(const char *oname)
{
	unsigned long long space;
	char *dsname, *propstr, *sep;
	nvlist_t *dsprops;

	space = 0;
	dsname = FUNC6(oname);
	if (dsname == NULL)
		return (0);

	/* Truncate snapshot to dataset name, as needed */
	if ((sep = FUNC5(dsname, '@')) != NULL)
		*sep = '\0';

	if (FUNC1(&dsprops) != 0) {
		FUNC2(dsname);
		return (0);
	}

	if (FUNC0(be, dsname, dsprops) != 0) {
		FUNC3(dsprops);
		FUNC2(dsname);
		return (0);
	}

	if (FUNC4(dsprops, "used", &propstr) == 0)
		space = FUNC7(propstr, NULL, 10);

	FUNC3(dsprops);
	FUNC2(dsname);
	return (space);
}