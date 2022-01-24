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
typedef  int u_long ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int*) ; 

int
FUNC4(evutil_socket_t fd)
{
#ifdef _WIN32
	{
		u_long nonblocking = 1;
		if (ioctlsocket(fd, FIONBIO, &nonblocking) == SOCKET_ERROR) {
			event_sock_warn(fd, "fcntl(%d, F_GETFL)", (int)fd);
			return -1;
		}
	}
#else
	{
		int flags;
		if ((flags = FUNC2(fd, F_GETFL, NULL)) < 0) {
			FUNC1("fcntl(%d, F_GETFL)", fd);
			return -1;
		}
		if (!(flags & O_NONBLOCK)) {
			if (FUNC2(fd, F_SETFL, flags | O_NONBLOCK) == -1) {
				FUNC1("fcntl(%d, F_SETFL)", fd);
				return -1;
			}
		}
	}
#endif
	return 0;
}