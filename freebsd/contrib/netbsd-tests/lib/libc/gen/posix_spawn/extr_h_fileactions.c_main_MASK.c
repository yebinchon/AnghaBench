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
struct stat {int dummy; } ;

/* Variables and functions */
 int BUFSIZE ; 
 scalar_t__ EBADF ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (struct stat*,struct stat*,int) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,char*,int) ; 

int
FUNC10(int argc, char **argv)
{
	int res = EXIT_SUCCESS;
	char buf[BUFSIZE];
	struct stat sb0, sb1;

	FUNC7(buf, "test...");
	/* file desc 3 should be closed via addclose */
	if (FUNC6(3, buf, BUFSIZE) != -1 || errno != EBADF) {
		FUNC2(stderr, "%s: filedesc 3 is not closed\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	/* file desc 4 should be closed via closeonexec */
	if (FUNC6(4, buf, BUFSIZE) != -1 || errno != EBADF) {
		FUNC2(stderr, "%s: filedesc 4 is not closed\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	/* file desc 5 remains open */
	if (FUNC9(5, buf, BUFSIZE) <= 0) {
		FUNC2(stderr, "%s: could not write to filedesc 5\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	/* file desc 6 should be open (via addopen) */
	if (FUNC9(6, buf, BUFSIZE) <= 0) {
		FUNC2(stderr, "%s: could not write to filedesc 6\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	/* file desc 7 should refer to stdout */
	FUNC0(stdout);
	if (FUNC3(FUNC1(stdout), &sb0) != 0) {
		FUNC2(stderr, "%s: could not fstat stdout\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	if (FUNC3(7, &sb1) != 0) {
		FUNC2(stderr, "%s: could not fstat filedesc 7\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	if (FUNC9(7, buf, FUNC8(buf)) <= 0) {
		FUNC2(stderr, "%s: could not write to filedesc 7\n",
		    FUNC4());
		res = EXIT_FAILURE;
	}
	if (FUNC5(&sb0, &sb1, sizeof sb0) != 0) {
		FUNC2(stderr, "%s: stat results differ\n", FUNC4());
		res = EXIT_FAILURE;
	}

	return res;
}