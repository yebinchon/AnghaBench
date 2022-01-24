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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MODE_LIST ; 
 int current_filename_printed ; 
 scalar_t__ filename ; 
 int files_pos ; 
 int files_total ; 
 int first_filename_printed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ opt_mode ; 
 int /*<<< orphan*/  opt_robot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * stderr ; 
 scalar_t__ stdin_filename ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
	if (!opt_robot && (files_total != 1 || filename != stdin_filename)) {
		FUNC2();

		FILE *file = opt_mode == MODE_LIST ? stdout : stderr;

		// If a file was already processed, put an empty line
		// before the next filename to improve readability.
		if (first_filename_printed)
			FUNC1('\n', file);

		first_filename_printed = true;
		current_filename_printed = true;

		// If we don't know how many files there will be due
		// to usage of --files or --files0.
		if (files_total == 0)
			FUNC0(file, "%s (%u)\n", filename,
					files_pos);
		else
			FUNC0(file, "%s (%u/%u)\n", filename,
					files_pos, files_total);

		FUNC3();
	}

	return;
}