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
 int NV_TYPE_NUMBER ; 
 int NV_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,int*,void**) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC8(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
	const char *name;
	void *cookie;
	int nvtype;
	bool hastype, hasfamily;

	hastype = false;
	hasfamily = false;

	cookie = NULL;
	while ((name = FUNC5(newlimits, &nvtype, &cookie)) != NULL) {
		if (nvtype == NV_TYPE_STRING) {
			const char *type;

			if (FUNC7(name, "type", sizeof("type") - 1) != 0)
				return (EINVAL);
			type = FUNC4(newlimits, name);
			if (FUNC6(type, "ADDR2NAME") != 0 &&
			    FUNC6(type, "NAME2ADDR") != 0 &&
			    FUNC6(type, "ADDR") != 0 &&
			    FUNC6(type, "NAME") != 0) {
				return (EINVAL);
			}
			if (!FUNC1(oldlimits, type))
				return (ENOTCAPABLE);
			hastype = true;
		} else if (nvtype == NV_TYPE_NUMBER) {
			int family;

			if (FUNC7(name, "family", sizeof("family") - 1) != 0)
				return (EINVAL);
			family = (int)FUNC3(newlimits, name);
			if (!FUNC0(oldlimits, family))
				return (ENOTCAPABLE);
			hasfamily = true;
		} else {
			return (EINVAL);
		}
	}

	/*
	 * If the new limit doesn't mention type or family we have to
	 * check if the current limit does have those. Missing type or
	 * family in the limit means that all types or families are
	 * allowed.
	 */
	if (!hastype) {
		if (FUNC2(oldlimits, "type"))
			return (ENOTCAPABLE);
	}
	if (!hasfamily) {
		if (FUNC2(oldlimits, "family"))
			return (ENOTCAPABLE);
	}

	return (0);
}