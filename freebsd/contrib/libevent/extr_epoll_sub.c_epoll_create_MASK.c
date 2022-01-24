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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  __NR_epoll_create ; 
 int /*<<< orphan*/  __NR_epoll_create1 ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

int
FUNC1(int size)
{
#if !defined(__NR_epoll_create) && defined(__NR_epoll_create1)
	if (size <= 0) {
		errno = EINVAL;
		return -1;
	}
	return (syscall(__NR_epoll_create1, 0));
#else
	return (FUNC0(__NR_epoll_create, size));
#endif
}