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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  mib ; 
 scalar_t__ miblen ; 
 char* modpath ; 
 unsigned long pathctl ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char *path;
	size_t sz;

	if (modpath != NULL) {
		FUNC1(modpath);
		modpath = NULL;
	}

	if (miblen == 0)
		FUNC2();
	if (FUNC4(mib, miblen, NULL, &sz, NULL, 0) == -1)
		FUNC0(1, "getting path: sysctl(%s) - size only", pathctl);
	if ((path = FUNC3(sz + 1)) == NULL) {
		errno = ENOMEM;
		FUNC0(1, "allocating %lu bytes for the path",
		    (unsigned long)sz+1);
	}
	if (FUNC4(mib, miblen, path, &sz, NULL, 0) == -1)
		FUNC0(1, "getting path: sysctl(%s)", pathctl);
	modpath = path;
}