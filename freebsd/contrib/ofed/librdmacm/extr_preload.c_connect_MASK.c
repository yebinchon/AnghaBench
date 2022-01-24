#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {int (* connect ) (int,struct sockaddr const*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 scalar_t__ errno ; 
 scalar_t__ fd_fork ; 
 int /*<<< orphan*/  fd_fork_active ; 
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  fd_normal ; 
 scalar_t__ fd_rsocket ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ real ; 
 int FUNC5 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
	int fd, ret;

	if (FUNC0(socket, &fd) == fd_rsocket) {
		ret = FUNC4(fd, addr, addrlen);
		if (!ret || errno == EINPROGRESS)
			return ret;

		ret = FUNC6(socket, fd_normal);
		if (ret < 0)
			return ret;

		FUNC3(fd);
		fd = ret;
	} else if (FUNC1(socket) == fd_fork) {
		FUNC2(socket, fd, fd_normal, fd_fork_active);
	}

	return real.connect(fd, addr, addrlen);
}