#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bool_t ;
struct TYPE_4__ {int xp_fd; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 TYPE_1__** __svc_xports ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_fd_lock ; 
 int /*<<< orphan*/  svc_fdset ; 
 int svc_maxfd ; 

__attribute__((used)) static void
FUNC4(SVCXPRT *xprt, bool_t dolock)
{
	int sock;

	FUNC1(xprt != NULL);

	sock = xprt->xp_fd;

	if (dolock)
		FUNC3(&svc_fd_lock);
	if ((sock < FD_SETSIZE) && (__svc_xports[sock] == xprt)) {
		__svc_xports[sock] = NULL;
		FUNC0(sock, &svc_fdset);
		if (sock >= svc_maxfd) {
			for (svc_maxfd--; svc_maxfd>=0; svc_maxfd--)
				if (__svc_xports[svc_maxfd])
					break;
		}
	} else if ((sock == FD_SETSIZE) && (__svc_xports[sock] == xprt))
		__svc_xports[sock] = NULL;
	if (dolock)
		FUNC2(&svc_fd_lock);
}