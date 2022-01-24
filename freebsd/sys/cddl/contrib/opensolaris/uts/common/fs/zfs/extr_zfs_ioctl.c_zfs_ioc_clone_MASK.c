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
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int error = 0;
	nvlist_t *nvprops = NULL;
	char *origin_name;

	if (FUNC5(innvl, "origin", &origin_name) != 0)
		return (FUNC0(EINVAL));
	(void) FUNC4(innvl, "props", &nvprops);

	if (FUNC6(fsname, '@') ||
	    FUNC6(fsname, '%'))
		return (FUNC0(EINVAL));

	if (FUNC1(origin_name, NULL, NULL) != 0)
		return (FUNC0(EINVAL));
	error = FUNC2(fsname, origin_name);
	if (error != 0)
		return (error);

	/*
	 * It would be nice to do this atomically.
	 */
	if (error == 0) {
		error = FUNC7(fsname, ZPROP_SRC_LOCAL,
		    nvprops, outnvl);
		if (error != 0)
			(void) FUNC3(fsname);
	}
#ifdef __FreeBSD__
	if (error == 0)
		zvol_create_minors(fsname);
#endif
	return (error);
}