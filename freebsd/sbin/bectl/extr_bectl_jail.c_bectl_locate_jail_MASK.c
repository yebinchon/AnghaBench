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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 

__attribute__((used)) static int
FUNC7(const char *ident)
{
	nvlist_t *belist, *props;
	char *mnt;
	int jid;

	/* Try the easy-match first */
	jid = FUNC4(ident);
	/*
	 * jail_getid(0) will always return 0, because this prison does exist.
	 * bectl(8) knows that this is not what it wants, so we should fall
	 * back to mount point search.
	 */
	if (jid > 0)
		return (jid);

	/* Attempt to try it as a BE name, first */
	if (FUNC1(&belist) != 0)
		return (-1);

	if (FUNC0(be, belist) != 0)
		return (-1);

	if (FUNC5(belist, ident, &props) == 0) {

		/* path where a boot environment is mounted */
		if (FUNC6(props, "mounted", &mnt) == 0) {

			/* looking for a jail that matches our bootenv path */
			jid = FUNC3(mnt);
			FUNC2(belist);
			return (jid);
		}

		FUNC2(belist);
	}

	return (-1);
}