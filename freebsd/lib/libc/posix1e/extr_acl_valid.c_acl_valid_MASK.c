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
typedef  int /*<<< orphan*/ * acl_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_BRAND_POSIX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 

int
FUNC3(acl_t acl)
{
	int	error;

	if (acl == NULL) {
		errno = EINVAL;
		return (-1);
	}
	if (!FUNC0(acl, ACL_BRAND_POSIX)) {
		errno = EINVAL;
		return (-1);
	}
	FUNC2(acl);
	error = FUNC1(acl);
	if (error) {
		errno = error;
		return (-1);
	} else {
		return (0);
	}
}