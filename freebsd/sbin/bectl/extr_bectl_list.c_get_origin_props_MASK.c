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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static const char *
FUNC4(nvlist_t *dsprops, nvlist_t **originprops)
{
	char *propstr;

	if (FUNC3(dsprops, "origin", &propstr) == 0) {
		if (FUNC1(originprops) != 0) {
			FUNC2(stderr,
			    "bectl list: failed to allocate origin prop nvlist\n");
			return (NULL);
		}
		if (FUNC0(be, propstr, *originprops) != 0) {
			/* XXX TODO: Real errors */
			FUNC2(stderr,
			    "bectl list: failed to fetch origin properties\n");
			return (NULL);
		}

		return (propstr);
	}
	return (NULL);
}