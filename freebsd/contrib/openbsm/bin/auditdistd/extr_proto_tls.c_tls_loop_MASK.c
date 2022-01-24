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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(int sockfd, SSL *tcpssl)
{
	fd_set fds;
	int maxfd, tcpfd;

	tcpfd = FUNC5(tcpssl);
	FUNC4(tcpfd >= 0);

	for (;;) {
		FUNC2(&fds);
		FUNC1(sockfd, &fds);
		FUNC1(tcpfd, &fds);
		maxfd = FUNC3(sockfd, tcpfd);

		FUNC4(maxfd + 1 <= (int)FD_SETSIZE);
		if (FUNC7(maxfd + 1, &fds, NULL, NULL, NULL) == -1) {
			if (errno == EINTR)
				continue;
			FUNC6(EX_TEMPFAIL, "select() failed");
		}
		if (FUNC0(sockfd, &fds))
			FUNC9(sockfd, tcpssl);
		if (FUNC0(tcpfd, &fds))
			FUNC8(tcpssl, sockfd);
	}
}