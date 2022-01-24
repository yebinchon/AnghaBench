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

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  _PATH_REROOT ; 
 int /*<<< orphan*/  _PATH_REROOT_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  init_path_argv0 ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  single_user ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static state_func_t
FUNC10(void)
{
	void *buf;
	size_t bufsize;
	int error;

	buf = NULL;
	bufsize = 0;

	FUNC7();
	FUNC8();

	/*
	 * Make sure nobody can interfere with our scheme.
	 * Ignore ESRCH, which can apparently happen when
	 * there are no processes to kill.
	 */
	error = FUNC4(-1, SIGKILL);
	if (error != 0 && errno != ESRCH) {
		FUNC1("kill(2) failed: %s", FUNC9(errno));
		goto out;
	}

	/*
	 * Copy the init binary into tmpfs, so that we can unmount
	 * the old rootfs without committing suicide.
	 */
	error = FUNC6(init_path_argv0, &buf, &bufsize);
	if (error != 0)
		goto out;
	error = FUNC5(_PATH_REROOT);
	if (error != 0)
		goto out;
	error = FUNC0(_PATH_REROOT_INIT, buf, bufsize);
	if (error != 0)
		goto out;

	/*
	 * Execute the temporary init.
	 */
	FUNC2(_PATH_REROOT_INIT, _PATH_REROOT_INIT, "-r", NULL);
	FUNC1("cannot exec %s: %s", _PATH_REROOT_INIT, FUNC9(errno));

out:
	FUNC1("reroot failed; going to single user mode");
	FUNC3(buf);
	return (state_func_t) single_user;
}