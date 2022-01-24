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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	for (nvpair_t *pair = FUNC2(innvl, NULL);
	    pair != NULL; pair = FUNC2(innvl, pair)) {
		char *snap_name;

		/*
		 * Verify the snapshot argument.
		 */
		if (FUNC4(pair, &snap_name) != 0)
			return (FUNC0(EINVAL));


		/* Verify that the keys (bookmarks) are unique */
		for (nvpair_t *pair2 = FUNC2(innvl, pair);
		    pair2 != NULL; pair2 = FUNC2(innvl, pair2)) {
			if (FUNC5(FUNC3(pair), FUNC3(pair2)) == 0)
				return (FUNC0(EINVAL));
		}
	}

	return (FUNC1(innvl, outnvl));
}