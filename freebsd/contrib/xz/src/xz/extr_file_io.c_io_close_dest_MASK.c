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
struct TYPE_3__ {int dest_fd; int /*<<< orphan*/  dest_name; int /*<<< orphan*/  dest_st; } ;
typedef  TYPE_1__ file_pair ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int restore_stdout_flags ; 
 int /*<<< orphan*/  stdout_flags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(file_pair *pair, bool success)
{
#ifndef TUKLIB_DOSLIKE
	// If io_open_dest() has disabled O_APPEND, restore it here.
	if (restore_stdout_flags) {
		FUNC1(pair->dest_fd == STDOUT_FILENO);

		restore_stdout_flags = false;

		if (FUNC3(STDOUT_FILENO, F_SETFL, stdout_flags) == -1) {
			FUNC6(FUNC0("Error restoring the O_APPEND flag "
					"to standard output: %s"),
					FUNC7(errno));
			return true;
		}
	}
#endif

	if (pair->dest_fd == -1 || pair->dest_fd == STDOUT_FILENO)
		return false;

	if (FUNC2(pair->dest_fd)) {
		FUNC6(FUNC0("%s: Closing the file failed: %s"),
				pair->dest_name, FUNC7(errno));

		// Closing destination file failed, so we cannot trust its
		// contents. Get rid of junk:
		FUNC5(pair->dest_name, &pair->dest_st);
		FUNC4(pair->dest_name);
		return true;
	}

	// If the operation using this file wasn't successful, we git rid
	// of the junk file.
	if (!success)
		FUNC5(pair->dest_name, &pair->dest_st);

	FUNC4(pair->dest_name);

	return false;
}