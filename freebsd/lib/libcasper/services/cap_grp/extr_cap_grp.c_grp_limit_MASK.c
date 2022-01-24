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
 int EINVAL ; 
 int ENOTCAPABLE ; 
 int NV_TYPE_NVLIST ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,int*,void**) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
	const nvlist_t *limits;
	const char *name;
	void *cookie;
	int error, type;

	if (oldlimits != NULL && FUNC3(oldlimits, "cmds") &&
	    !FUNC3(newlimits, "cmds")) {
		return (ENOTCAPABLE);
	}
	if (oldlimits != NULL && FUNC3(oldlimits, "fields") &&
	    !FUNC3(newlimits, "fields")) {
		return (ENOTCAPABLE);
	}
	if (oldlimits != NULL && FUNC3(oldlimits, "groups") &&
	    !FUNC3(newlimits, "groups")) {
		return (ENOTCAPABLE);
	}

	cookie = NULL;
	while ((name = FUNC5(newlimits, &type, &cookie)) != NULL) {
		if (type != NV_TYPE_NVLIST)
			return (EINVAL);
		limits = FUNC4(newlimits, name);
		if (FUNC6(name, "cmds") == 0)
			error = FUNC0(oldlimits, limits);
		else if (FUNC6(name, "fields") == 0)
			error = FUNC1(oldlimits, limits);
		else if (FUNC6(name, "groups") == 0)
			error = FUNC2(oldlimits, limits);
		else
			error = EINVAL;
		if (error != 0)
			return (error);
	}

	return (0);
}