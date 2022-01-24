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
 char* MOUNT_META_OPTION_CURRENT ; 
 char* MOUNT_META_OPTION_FSTAB ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 char* FUNC12 (char**,char*) ; 

char *
FUNC13(char *opts, char *fstab, int curflags)
{
	char *o, *p;
	char *cur;
	char *expopt, *newopt, *tmpopt;

	if (opts == NULL)
		return (FUNC9(""));

	/* remove meta options from list */
	FUNC5(fstab, MOUNT_META_OPTION_FSTAB);
	FUNC5(fstab, MOUNT_META_OPTION_CURRENT);
	cur = FUNC2(curflags);

	/*
	 * Expand all meta-options passed to us first.
	 */
	expopt = NULL;
	for (p = opts; (o = FUNC12(&p, ",")) != NULL;) {
		if (FUNC7(MOUNT_META_OPTION_FSTAB, o) == 0)
			expopt = FUNC0(expopt, fstab);
		else if (FUNC7(MOUNT_META_OPTION_CURRENT, o) == 0)
			expopt = FUNC0(expopt, cur);
		else
			expopt = FUNC0(expopt, o);
	}
	FUNC3(cur);
	FUNC3(opts);

	/*
	 * Remove previous contradictory arguments. Given option "foo" we
	 * remove all the "nofoo" options. Given "nofoo" we remove "nonofoo"
	 * and "foo" - so we can deal with possible options like "notice".
	 */
	newopt = NULL;
	for (p = expopt; (o = FUNC12(&p, ",")) != NULL;) {
		if ((tmpopt = FUNC4( FUNC10(o) + 2 + 1 )) == NULL)
			FUNC1(1, "malloc failed");

		FUNC8(tmpopt, "no");
		FUNC6(tmpopt, o);
		FUNC5(newopt, tmpopt);
		FUNC3(tmpopt);

		if (FUNC11("no", o, 2) == 0)
			FUNC5(newopt, o+2);

		newopt = FUNC0(newopt, o);
	}
	FUNC3(expopt);

	return (newopt);
}