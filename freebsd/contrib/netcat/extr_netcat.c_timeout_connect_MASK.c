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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  optval ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int FUNC0 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (struct pollfd*,int,int) ; 
 int timeout ; 

int
FUNC5(int s, const struct sockaddr *name, socklen_t namelen)
{
	struct pollfd pfd;
	socklen_t optlen;
	int flags, optval;
	int ret;

	if (timeout != -1) {
		flags = FUNC2(s, F_GETFL, 0);
		if (FUNC2(s, F_SETFL, flags | O_NONBLOCK) == -1)
			FUNC1(1, "set non-blocking mode");
	}

	if ((ret = FUNC0(s, name, namelen)) != 0 && errno == EINPROGRESS) {
		pfd.fd = s;
		pfd.events = POLLOUT;
		if ((ret = FUNC4(&pfd, 1, timeout)) == 1) {
			optlen = sizeof(optval);
			if ((ret = FUNC3(s, SOL_SOCKET, SO_ERROR,
			    &optval, &optlen)) == 0) {
				errno = optval;
				ret = optval == 0 ? 0 : -1;
			}
		} else if (ret == 0) {
			errno = ETIMEDOUT;
			ret = -1;
		} else
			FUNC1(1, "poll failed");
	}

	if (timeout != -1 && FUNC2(s, F_SETFL, flags) == -1)
		FUNC1(1, "restoring flags");

	return (ret);
}