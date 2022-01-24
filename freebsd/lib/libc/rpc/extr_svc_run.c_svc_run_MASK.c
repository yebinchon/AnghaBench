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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_fd_lock ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ svc_maxfd ; 

void
FUNC7(void)
{
	fd_set readfds, cleanfds;
	struct timeval timeout;

	timeout.tv_sec = 30;
	timeout.tv_usec = 0;

	for (;;) {
		FUNC4(&svc_fd_lock);
		readfds = svc_fdset;
		cleanfds = svc_fdset;
		FUNC5(&svc_fd_lock);
		switch (FUNC2(svc_maxfd+1, &readfds, NULL, NULL, &timeout)) {
		case -1:
			FUNC0(&readfds);
			if (errno == EINTR) {
				continue;
			}
			FUNC3("svc_run: - select failed");
			return;
		case 0:
			FUNC1(&cleanfds, 30, FALSE);
			continue;
		default:
			FUNC6(&readfds);
		}
	}
}