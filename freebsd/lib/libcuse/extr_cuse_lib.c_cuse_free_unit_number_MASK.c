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
 int CUSE_ERR_INVALID ; 
 int CUSE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  CUSE_IOCTL_FREE_UNIT ; 
 scalar_t__ f_cuse ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 

int
FUNC1(int num)
{
	int error;

	if (f_cuse < 0)
		return (CUSE_ERR_INVALID);

	error = FUNC0(f_cuse, CUSE_IOCTL_FREE_UNIT, &num);
	if (error)
		return (CUSE_ERR_NO_MEMORY);

	return (0);
}