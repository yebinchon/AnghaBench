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
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* sendmsg ) (int,struct msghdr const*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ fd_rsocket ; 
 TYPE_1__ real ; 
 int /*<<< orphan*/  FUNC1 (int,struct msghdr const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct msghdr const*,int) ; 

ssize_t FUNC3(int socket, const struct msghdr *msg, int flags)
{
	int fd;
	return (FUNC0(socket, &fd) == fd_rsocket) ?
		FUNC1(fd, msg, flags) : real.sendmsg(fd, msg, flags);
}