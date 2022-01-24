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
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (scalar_t__) ; 

void
FUNC7(void)
{
	int nullfd, dupfd;

	if ((nullfd = dupfd = FUNC5(_PATH_DEVNULL, O_RDWR)) == -1) {
		FUNC4(stderr, "Couldn't open /dev/null: %s\n",
		    FUNC6(errno));
		FUNC2(1);
	}
	while (++dupfd <= STDERR_FILENO) {
		/* Only populate closed fds. */
		if (FUNC3(dupfd, F_GETFL) == -1 && errno == EBADF) {
			if (FUNC1(nullfd, dupfd) == -1) {
				FUNC4(stderr, "dup2: %s\n", FUNC6(errno));
				FUNC2(1);
			}
		}
	}
	if (nullfd > STDERR_FILENO)
		FUNC0(nullfd);
}