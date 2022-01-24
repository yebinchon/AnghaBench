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
struct TYPE_2__ {int (* accept ) (int,struct sockaddr*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 scalar_t__ fd_fork_listen ; 
 int /*<<< orphan*/  fd_fork_passive ; 
 scalar_t__ FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ fd_normal ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  fd_ready ; 
 scalar_t__ fd_rsocket ; 
 int /*<<< orphan*/  FUNC4 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 TYPE_1__ real ; 
 int FUNC6 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 

int FUNC8(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
	int fd, index, ret;

	if (FUNC1(socket, &fd) == fd_rsocket) {
		index = FUNC3();
		if (index < 0)
			return index;

		ret = FUNC5(fd, addr, addrlen);
		if (ret < 0) {
			FUNC0(index, &fd);
			return ret;
		}

		FUNC4(index, ret, fd_rsocket, fd_ready);
		return index;
	} else if (FUNC2(socket) == fd_fork_listen) {
		index = FUNC3();
		if (index < 0)
			return index;

		ret = real.accept(fd, addr, addrlen);
		if (ret < 0) {
			FUNC0(index, &fd);
			return ret;
		}

		FUNC4(index, ret, fd_normal, fd_fork_passive);
		return index;
	} else {
		return real.accept(fd, addr, addrlen);
	}
}