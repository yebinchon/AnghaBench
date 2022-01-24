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
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int _STAT_DIRSIZE ; 
 int _STAT_EXEC_EXT ; 
 int _STAT_EXEC_MAGIC ; 
 int _djstat_flags ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * user_abort_pipe ; 
 int warn_fchown ; 

extern void
FUNC7(void)
{
	// Make sure that stdin, stdout, and stderr are connected to
	// a valid file descriptor. Exit immediately with exit code ERROR
	// if we cannot make the file descriptors valid. Maybe we should
	// print an error message, but our stderr could be screwed anyway.
	FUNC6(E_ERROR);

#ifndef TUKLIB_DOSLIKE
	// If fchown() fails setting the owner, we warn about it only if
	// we are root.
	warn_fchown = FUNC2() == 0;

	// Create a pipe for the self-pipe trick.
	if (FUNC4(user_abort_pipe))
		FUNC3(FUNC0("Error creating a pipe: %s"),
				FUNC5(errno));

	// Make both ends of the pipe non-blocking.
	for (unsigned i = 0; i < 2; ++i) {
		int flags = FUNC1(user_abort_pipe[i], F_GETFL);
		if (flags == -1 || FUNC1(user_abort_pipe[i], F_SETFL,
				flags | O_NONBLOCK) == -1)
			FUNC3(FUNC0("Error creating a pipe: %s"),
					FUNC5(errno));
	}
#endif

#ifdef __DJGPP__
	// Avoid doing useless things when statting files.
	// This isn't important but doesn't hurt.
	_djstat_flags = _STAT_EXEC_EXT | _STAT_EXEC_MAGIC | _STAT_DIRSIZE;
#endif

	return;
}