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
struct sockaddr {int dummy; } ;
struct pkt {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  scalar_t__ SOCKET ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ENOBUFS ; 
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAX_AF ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ WSAENOBUFS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* fd ; 
 scalar_t__* fd_family ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(
	sockaddr_u *dest,
	struct pkt *pkt,
	int len
	)
{
	int i;
	int cc;
	SOCKET sock = INVALID_SOCKET;

#ifdef SYS_WINNT
	DWORD err;
#endif /* SYS_WINNT */

	/* Find a local family compatible socket to send ntp packet to ntp server */
	for(i = 0; (i < MAX_AF); i++) {
		if(FUNC0(dest) == fd_family[i]) {
			sock = fd[i];
		break;
		}
	}

	if (INVALID_SOCKET == sock) {
		FUNC4(LOG_ERR, "cannot find family compatible socket to send ntp packet");
		FUNC3(1);
		/*NOTREACHED*/
	}

	cc = FUNC5(sock, (char *)pkt, len, 0, (struct sockaddr *)dest,
			FUNC1(dest));

	if (SOCKET_ERROR == cc) {
#ifndef SYS_WINNT
		if (errno != EWOULDBLOCK && errno != ENOBUFS)
#else
		err = WSAGetLastError();
		if (err != WSAEWOULDBLOCK && err != WSAENOBUFS)
#endif /* SYS_WINNT */
			FUNC4(LOG_ERR, "sendto(%s): %m", FUNC6(dest));
	}
}