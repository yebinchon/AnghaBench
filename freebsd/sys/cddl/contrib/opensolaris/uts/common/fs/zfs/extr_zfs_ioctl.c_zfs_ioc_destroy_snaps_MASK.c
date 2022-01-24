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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int
FUNC10(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int error, poollen;
	nvlist_t *snaps;
	nvpair_t *pair;
	boolean_t defer;

	if (FUNC3(innvl, "snaps", &snaps) != 0)
		return (FUNC0(EINVAL));
	defer = FUNC2(innvl, "defer");

	poollen = FUNC6(poolname);
	for (pair = FUNC4(snaps, NULL); pair != NULL;
	    pair = FUNC4(snaps, pair)) {
		const char *name = FUNC5(pair);

		/*
		 * The snap must be in the specified pool to prevent the
		 * invalid removal of zvol minors below.
		 */
		if (FUNC7(name, poolname, poollen) != 0 ||
		    (name[poollen] != '/' && name[poollen] != '@'))
			return (FUNC0(EXDEV));

		FUNC8(FUNC5(pair));
#if defined(__FreeBSD__)
		zvol_remove_minors(name);
#endif
	}

	return (FUNC1(snaps, defer, outnvl));
}