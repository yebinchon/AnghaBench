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
struct stat {int st_mode; } ;
struct TYPE_2__ {int (* fxstat ) (int,int,struct stat*) ;} ;

/* Variables and functions */
 int S_IFMT ; 
 int __S_IFSOCK ; 
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ fd_rsocket ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ real ; 
 int FUNC2 (int,int,struct stat*) ; 
 int FUNC3 (int,int,struct stat*) ; 

int FUNC4(int ver, int socket, struct stat *buf)
{
	int fd, ret;

	FUNC1();
	if (FUNC0(socket, &fd) == fd_rsocket) {
		ret = real.fxstat(ver, socket, buf);
		if (!ret)
			buf->st_mode = (buf->st_mode & ~S_IFMT) | __S_IFSOCK;
	} else {
		ret = real.fxstat(ver, fd, buf);
	}
	return ret;
}