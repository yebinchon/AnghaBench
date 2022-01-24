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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC7 (char *arg, int from_tty)
{
	char path[PATH_MAX];
	CORE_ADDR base_addr;

	if (!exec_bfd)
		FUNC1("No kernel symbol file");

	/* Try to open the raw path to handle absolute paths first. */
	FUNC6(path, sizeof(path), "%s", arg);
	if (!FUNC0(path, sizeof(path))) {

		/*
		 * If that didn't work, look in the various possible
		 * paths for the module.
		 */
		if (!FUNC3(arg, path, sizeof(path))) {
			FUNC1("Unable to locate kld");
			return;
		}
	}

	if (!FUNC2(arg, &base_addr)) {
		FUNC1("Unable to find kld in kernel");
		return;
	}

	FUNC4(path, base_addr, from_tty);

	FUNC5();
}