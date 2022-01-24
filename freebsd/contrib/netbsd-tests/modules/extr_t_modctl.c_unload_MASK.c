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
 int /*<<< orphan*/  MODCTL_UNLOAD ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(const char *name, bool fatal)
{
	int err;

	FUNC2();
	FUNC5("Unloading module %s\n", name);
	errno = err = 0;

	if (FUNC4(MODCTL_UNLOAD, FUNC0(name)) == -1) {
		err = errno;
		FUNC3(stderr, "modctl(MODCTL_UNLOAD, %s) failed: %s\n",
		    name, FUNC6(err));
		if (fatal)
			FUNC1("Module unload failed");
	}
	return err;
}