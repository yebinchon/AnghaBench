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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct rad_handle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct rad_handle*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct rad_handle*,int,int*,struct timeval*) ; 
 int FUNC6 (struct rad_handle*,int*,struct timeval*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*,struct timeval*,struct timeval*) ; 

int
FUNC11(struct rad_handle *h)
{
	struct timeval timelimit;
	struct timeval tv;
	int fd;
	int n;

	n = FUNC6(h, &fd, &tv);

	if (n != 0)
		return n;

	FUNC4(&timelimit, NULL);
	FUNC9(&tv, &timelimit, &timelimit);

	for ( ; ; ) {
		fd_set readfds;

		FUNC2(&readfds);
		FUNC1(fd, &readfds);

		n = FUNC7(fd + 1, &readfds, NULL, NULL, &tv);

		if (n == -1) {
			FUNC3(h, "select: %s", FUNC8(errno));
			return -1;
		}

		if (!FUNC0(fd, &readfds)) {
			/* Compute a new timeout */
			FUNC4(&tv, NULL);
			FUNC10(&timelimit, &tv, &tv);
			if (tv.tv_sec > 0 || (tv.tv_sec == 0 && tv.tv_usec > 0))
				/* Continue the select */
				continue;
		}

		n = FUNC5(h, n, &fd, &tv);

		if (n != 0)
			return n;

		FUNC4(&timelimit, NULL);
		FUNC9(&tv, &timelimit, &timelimit);
	}
}