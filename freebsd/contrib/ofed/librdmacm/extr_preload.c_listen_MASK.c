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
struct TYPE_2__ {int (* listen ) (int,int) ;} ;

/* Variables and functions */
 scalar_t__ fd_fork ; 
 int /*<<< orphan*/  fd_fork_listen ; 
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  fd_normal ; 
 scalar_t__ fd_rsocket ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ real ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 

int FUNC5(int socket, int backlog)
{
	int fd, ret;
	if (FUNC0(socket, &fd) == fd_rsocket) {
		ret = FUNC3(fd, backlog);
	} else {
		ret = real.listen(fd, backlog);
		if (!ret && FUNC1(socket) == fd_fork)
			FUNC2(socket, fd, fd_normal, fd_fork_listen);
	}
	return ret;
}