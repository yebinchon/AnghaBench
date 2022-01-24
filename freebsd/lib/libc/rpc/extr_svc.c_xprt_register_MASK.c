#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int xp_fd; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 TYPE_1__** __svc_xports ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_fd_lock ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  svc_maxfd ; 

void
FUNC7(SVCXPRT *xprt)
{
	int sock;

	FUNC1(xprt != NULL);

	sock = xprt->xp_fd;

	FUNC6(&svc_fd_lock);
	if (__svc_xports == NULL) {
		__svc_xports = (SVCXPRT **)
			FUNC3((FD_SETSIZE + 1) * sizeof(SVCXPRT *));
		if (__svc_xports == NULL) {
			FUNC5(&svc_fd_lock);
			return;
		}
		FUNC4(__svc_xports, '\0', (FD_SETSIZE + 1) * sizeof(SVCXPRT *));
	}
	if (sock < FD_SETSIZE) {
		__svc_xports[sock] = xprt;
		FUNC0(sock, &svc_fdset);
		svc_maxfd = FUNC2(svc_maxfd, sock);
	} else if (sock == FD_SETSIZE)
		__svc_xports[sock] = xprt;
	FUNC5(&svc_fd_lock);
}