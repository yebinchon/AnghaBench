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
struct pollfd {int fd; scalar_t__ revents; scalar_t__ events; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ POLLIN ; 
 char* SYS_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  failure_retry_rate ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
	char hostname[128];
	int hn_fd;
	int rc;
	struct pollfd fds[2];
	int numfds = 1;
	int ud_fd;

	ud_fd = FUNC1();
	if (ud_fd >= 0)
		numfds = 2;

	while (1) {
		hn_fd = FUNC2(SYS_HOSTNAME, O_RDONLY);
		if (hn_fd < 0) {
			FUNC8(LOG_ERR,
				"Open %s Failed: retry in %d seconds\n",
				SYS_HOSTNAME, failure_retry_rate);
			FUNC7(failure_retry_rate);
			continue;
		}

		fds[0].fd = hn_fd;
		fds[0].events = 0;
		fds[0].revents = 0;

		fds[1].fd = ud_fd;
		fds[1].events = POLLIN;
		fds[1].revents = 0;

		rc = FUNC3(fds, numfds, -1);

		if (rc > 0) {
			if (FUNC5(hn_fd, hostname, sizeof(hostname)) != 0)
				hostname[0] = '\0';

			if (fds[0].revents != 0)
				FUNC8(LOG_ERR, "Hostname change: %s\n", hostname);

			if (fds[1].revents != 0)
				FUNC4(ud_fd, hostname);

			rc = FUNC6((const char *)hostname, 0);
		} else {
			FUNC8(LOG_ERR, "Poll %s Failed\n", SYS_HOSTNAME);
			rc = -EIO;
		}

		FUNC0(hn_fd);

		if (rc)
			FUNC7(failure_retry_rate);
	}
}