#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  idx; } ;
typedef  TYPE_1__ xz_file_info ;
typedef  int /*<<< orphan*/  file_pair ;

/* Variables and functions */
 scalar_t__ FORMAT_AUTO ; 
 scalar_t__ FORMAT_XZ ; 
 scalar_t__ V_WARNING ; 
 TYPE_1__ XZ_FILE_INFO_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 () ; 
 int opt_force ; 
 scalar_t__ opt_format ; 
 scalar_t__ opt_robot ; 
 int opt_stdout ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char const* stdin_filename ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

extern void
FUNC13(const char *filename)
{
	if (opt_format != FORMAT_XZ && opt_format != FORMAT_AUTO)
		FUNC5(FUNC0("--list works only on .xz files "
				"(--format=xz or --format=auto)"));

	FUNC6(filename);

	if (filename == stdin_filename) {
		FUNC4(FUNC0("--list does not support reading from "
				"standard input"));
		return;
	}

	// Unset opt_stdout so that io_open_src() won't accept special files.
	// Set opt_force so that io_open_src() will follow symlinks.
	opt_stdout = false;
	opt_force = true;
	file_pair *pair = FUNC2(filename);
	if (pair == NULL)
		return;

	xz_file_info xfi = XZ_FILE_INFO_INIT;
	if (!FUNC8(&xfi, pair)) {
		bool fail;

		// We have three main modes:
		//  - --robot, which has submodes if --verbose is specified
		//    once or twice
		//  - Normal --list without --verbose
		//  - --list with one or two --verbose
		if (opt_robot)
			fail = FUNC11(&xfi, pair);
		else if (FUNC7() <= V_WARNING)
			fail = FUNC10(&xfi, pair);
		else
			fail = FUNC9(&xfi, pair);

		// Update the totals that are displayed after all
		// the individual files have been listed. Don't count
		// broken files.
		if (!fail)
			FUNC12(&xfi);

		FUNC3(xfi.idx, NULL);
	}

	FUNC1(pair, false);
	return;
}