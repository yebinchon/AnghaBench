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
struct pollfd {int revents; } ;

/* Variables and functions */
 int POLLERR ; 
 int POLLHUP ; 
 int FUNC0 (struct pollfd*,int,int) ; 
 int FUNC1 (struct pollfd*,int,int) ; 

int FUNC2(struct pollfd *fds, int timeout)
{
	int ret;

	do {
#ifdef __linux__
		ret = FUNC1(fds, 1, timeout);
#else
		ret = poll(fds, 1, timeout);
#endif
	} while (!ret);

	return ret == 1 ? (fds->revents & (POLLERR | POLLHUP)) : ret;
}