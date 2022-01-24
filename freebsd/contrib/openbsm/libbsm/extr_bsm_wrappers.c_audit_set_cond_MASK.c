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
typedef  int /*<<< orphan*/  lcond ;

/* Variables and functions */
 int /*<<< orphan*/  A_OLDSETCOND ; 
 int /*<<< orphan*/  A_SETCOND ; 
 scalar_t__ EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ errno ; 

int 
FUNC1(int *cond)
{
	int ret;

	ret = FUNC0(A_SETCOND, cond, sizeof(*cond));
#ifdef A_OLDSETCOND
	if ((0 != ret) && (EINVAL == errno)) {
		long lcond = (long)*cond;

		ret = auditon(A_OLDSETCOND, &lcond, sizeof(lcond)); 
		*cond = (int)lcond;
	}
#endif
	return (ret);
}