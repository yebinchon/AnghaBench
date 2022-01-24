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
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int*,void**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
	const nvlist_t *nvl;
	const char *name;
	void *cookie;
	int error, type;

	cookie = NULL;
	while ((name = FUNC1(newlimits, &type, &cookie)) != NULL) {
		if (FUNC2(name, "limit") != 0 || type != NV_TYPE_NVLIST)
			return (EINVAL);
		nvl = FUNC0(cookie);
		error = FUNC4(nvl, true);
		if (error != 0)
			return (error);
		if (!FUNC3(oldlimits, nvl))
			return (ENOTCAPABLE);
	}

	return (0);
}