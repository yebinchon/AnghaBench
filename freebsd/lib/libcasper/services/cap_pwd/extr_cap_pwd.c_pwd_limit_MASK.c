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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int*,void**) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
	const nvlist_t *limits;
	const char *name;
	void *cookie;
	int error, type;

	if (oldlimits != NULL && FUNC0(oldlimits, "cmds") &&
	    !FUNC0(newlimits, "cmds")) {
		return (ENOTCAPABLE);
	}
	if (oldlimits != NULL && FUNC0(oldlimits, "fields") &&
	    !FUNC0(newlimits, "fields")) {
		return (ENOTCAPABLE);
	}
	if (oldlimits != NULL && FUNC0(oldlimits, "users") &&
	    !FUNC0(newlimits, "users")) {
		return (ENOTCAPABLE);
	}

	cookie = NULL;
	while ((name = FUNC2(newlimits, &type, &cookie)) != NULL) {
		if (type != NV_TYPE_NVLIST)
			return (EINVAL);
		limits = FUNC1(newlimits, name);
		if (FUNC6(name, "cmds") == 0)
			error = FUNC3(oldlimits, limits);
		else if (FUNC6(name, "fields") == 0)
			error = FUNC4(oldlimits, limits);
		else if (FUNC6(name, "users") == 0)
			error = FUNC5(oldlimits, limits);
		else
			error = EINVAL;
		if (error != 0)
			return (error);
	}

	return (0);
}