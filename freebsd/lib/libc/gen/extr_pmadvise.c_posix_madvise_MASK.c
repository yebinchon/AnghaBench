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
 int errno ; 
 int FUNC0 (void*,size_t,int) ; 

int
FUNC1(void *address, size_t size, int how)
{
	int ret, saved_errno;

	saved_errno = errno;
	if (FUNC0(address, size, how) == -1) {
		ret = errno;
		errno = saved_errno;
	} else {
		ret = 0;
	}
	return (ret);
}