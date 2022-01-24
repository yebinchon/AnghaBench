#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int src_fd; int /*<<< orphan*/  src_st; int /*<<< orphan*/  src_name; } ;
typedef  TYPE_1__ file_pair ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_keep_original ; 
 int restore_stdin_flags ; 
 int /*<<< orphan*/  stdin_flags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(file_pair *pair, bool success)
{
#ifndef TUKLIB_DOSLIKE
	if (restore_stdin_flags) {
		FUNC1(pair->src_fd == STDIN_FILENO);

		restore_stdin_flags = false;

		if (FUNC3(STDIN_FILENO, F_SETFL, stdin_flags) == -1)
			FUNC5(FUNC0("Error restoring the status flags "
					"to standard input: %s"),
					FUNC6(errno));
	}
#endif

	if (pair->src_fd != STDIN_FILENO && pair->src_fd != -1) {
		// Close the file before possibly unlinking it. On DOS-like
		// systems this is always required since unlinking will fail
		// if the file is open. On POSIX systems it usually works
		// to unlink open files, but in some cases it doesn't and
		// one gets EBUSY in errno.
		//
		// xz 5.2.2 and older unlinked the file before closing it
		// (except on DOS-like systems). The old code didn't handle
		// EBUSY and could fail e.g. on some CIFS shares. The
		// advantage of unlinking before closing is negligible
		// (avoids a race between close() and stat()/lstat() and
		// unlink()), so let's keep this simple.
		(void)FUNC2(pair->src_fd);

		if (success && !opt_keep_original)
			FUNC4(pair->src_name, &pair->src_st);
	}

	return;
}