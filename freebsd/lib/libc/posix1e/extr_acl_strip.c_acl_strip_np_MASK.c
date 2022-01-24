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
#define  ACL_BRAND_NFS4 129 
#define  ACL_BRAND_POSIX 128 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  errno ; 

acl_t
FUNC3(const acl_t aclp, int recalculate_mask)
{
	switch (FUNC0(aclp)) {
	case ACL_BRAND_NFS4:
		return (FUNC1(aclp, 0));

	case ACL_BRAND_POSIX:
		return (FUNC2(aclp, recalculate_mask));

	default:
		errno = EINVAL;
		return (NULL);
	}
}