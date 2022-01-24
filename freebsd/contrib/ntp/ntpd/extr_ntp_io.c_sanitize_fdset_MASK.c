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
 int EBADF ; 
 int EINTR ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int TRUE ; 
 int /*<<< orphan*/  activefds ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int maxactivefd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int/*BOOL*/
FUNC5(
	int	errc
	)
{
	int j, b, maxscan;

#  ifndef HAVE_SIGNALED_IO
	/*
	 * extended FAU debugging output
	 */
	if (errc != EINTR) {
		FUNC3(LOG_ERR,
			"select(%d, %s, 0L, 0L, &0.0) error: %m",
			maxactivefd + 1,
			FUNC2(maxactivefd, &activefds));
	}
#   endif
	
	if (errc != EBADF)
		return FALSE;

	/* if we have oviously bad FDs, try to sanitize the FD set. */
	for (j = 0, maxscan = 0; j <= maxactivefd; j++) {
		if (FUNC1(j, &activefds)) {
			if (-1 != FUNC4(j, &b, 0)) {
				maxscan = j;
				continue;
			}
#		    ifndef HAVE_SIGNALED_IO
			FUNC3(LOG_ERR,
				"Removing bad file descriptor %d from select set",
				j);
#		    endif
			FUNC0(j, &activefds);
		}
	}
	if (maxactivefd != maxscan)
		maxactivefd = maxscan;
	return TRUE;
}