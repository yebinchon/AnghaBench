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
typedef  int /*<<< orphan*/  state_func_t ;
typedef  int /*<<< orphan*/  init_path ;

/* Variables and functions */
 int /*<<< orphan*/  KENV_GET ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  RB_REROOT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  single_user ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char**,char*) ; 
 int FUNC6 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static state_func_t
FUNC7(void)
{
	char init_path[PATH_MAX], *path, *path_component;
	size_t init_path_len;
	int nbytes, error;

	/*
	 * Ask the kernel to mount the new rootfs.
	 */
	error = FUNC3(RB_REROOT);
	if (error != 0) {
		FUNC0("RB_REBOOT failed: %s", FUNC4(errno));
		goto out;
	}

	/*
	 * Figure out where the destination init(8) binary is.  Note that
	 * the path could be different than what we've started with.  Use
	 * the value from kenv, if set, or the one from sysctl otherwise.
	 * The latter defaults to a hardcoded value, but can be overridden
	 * by a build time option.
	 */
	nbytes = FUNC2(KENV_GET, "init_path", init_path, sizeof(init_path));
	if (nbytes <= 0) {
		init_path_len = sizeof(init_path);
		error = FUNC6("kern.init_path",
		    init_path, &init_path_len, NULL, 0);
		if (error != 0) {
			FUNC0("failed to retrieve kern.init_path: %s",
			    FUNC4(errno));
			goto out;
		}
	}

	/*
	 * Repeat the init search logic from sys/kern/init_path.c
	 */
	path_component = init_path;
	while ((path = FUNC5(&path_component, ":")) != NULL) {
		/*
		 * Execute init(8) from the new rootfs.
		 */
		FUNC1(path, path, NULL);
	}
	FUNC0("cannot exec init from %s: %s", init_path, FUNC4(errno));

out:
	FUNC0("reroot failed; going to single user mode");
	return (state_func_t) single_user;
}