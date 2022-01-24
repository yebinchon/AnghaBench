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
struct TYPE_2__ {int (* shutdown ) (int,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ fd_rsocket ; 
 TYPE_1__ real ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

int FUNC3(int socket, int how)
{
	int fd;
	return (FUNC0(socket, &fd) == fd_rsocket) ?
		FUNC1(fd, how) : real.shutdown(fd, how);
}