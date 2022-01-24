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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

extern void
FUNC6(int status, int err_status, int show_error)
{
	if (status != err_status) {
		// Close stdout. If something goes wrong,
		// print an error message to stderr.
		const int ferror_err = FUNC3(stdout);
		const int fclose_err = FUNC2(stdout);
		if (ferror_err || fclose_err) {
			status = err_status;

			// If it was fclose() that failed, we have the reason
			// in errno. If only ferror() indicated an error,
			// we have no idea what the reason was.
			if (show_error)
				FUNC4(stderr, "%s: %s: %s\n", progname,
						FUNC0("Writing to standard "
							"output failed"),
						fclose_err ? FUNC5(errno)
							: FUNC0("Unknown error"));
		}
	}

	if (status != err_status) {
		// Close stderr. If something goes wrong, there's
		// nothing where we could print an error message.
		// Just set the exit status.
		const int ferror_err = FUNC3(stderr);
		const int fclose_err = FUNC2(stderr);
		if (fclose_err || ferror_err)
			status = err_status;
	}

	FUNC1(status);
}