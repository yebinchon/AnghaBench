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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_VERSION_SNAP_PROPS ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_USERPROP ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,char) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	nvlist_t *snaps;
	nvlist_t *props = NULL;
	int error, poollen;
	nvpair_t *pair;

	(void) FUNC4(innvl, "props", &props);
	if (!FUNC3(props) &&
	    FUNC12(poolname, SPA_VERSION_SNAP_PROPS))
		return (FUNC1(ENOTSUP));
	if ((error = FUNC10(props)) != 0)
		return (error);

	if (FUNC4(innvl, "snaps", &snaps) != 0)
		return (FUNC1(EINVAL));
	poollen = FUNC8(poolname);
	for (pair = FUNC5(snaps, NULL); pair != NULL;
	    pair = FUNC5(snaps, pair)) {
		const char *name = FUNC6(pair);
		char *cp = FUNC7(name, '@');

		/*
		 * The snap name must contain an @, and the part after it must
		 * contain only valid characters.
		 */
		if (cp == NULL ||
		    FUNC11(cp + 1, NULL, NULL) != 0)
			return (FUNC1(EINVAL));

		/*
		 * The snap must be in the specified pool.
		 */
		if (FUNC9(name, poolname, poollen) != 0 ||
		    (name[poollen] != '/' && name[poollen] != '@'))
			return (FUNC1(EXDEV));

		/*
		 * Check for permission to set the properties on the fs.
		 */
		if (!FUNC3(props)) {
			*cp = '\0';
			error = FUNC13(name,
			    ZFS_DELEG_PERM_USERPROP, FUNC0());
			*cp = '@';
			if (error != 0)
				return (error);
		}

		/* This must be the only snap of this fs. */
		for (nvpair_t *pair2 = FUNC5(snaps, pair);
		    pair2 != NULL; pair2 = FUNC5(snaps, pair2)) {
			if (FUNC9(name, FUNC6(pair2), cp - name + 1)
			    == 0) {
				return (FUNC1(EXDEV));
			}
		}
	}

	error = FUNC2(snaps, props, outnvl);
	return (error);
}