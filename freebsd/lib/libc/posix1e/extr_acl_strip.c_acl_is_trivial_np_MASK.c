#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* acl_t ;
struct TYPE_10__ {int acl_cnt; } ;
struct TYPE_11__ {TYPE_1__ ats_acl; } ;

/* Variables and functions */
#define  ACL_BRAND_NFS4 129 
#define  ACL_BRAND_POSIX 128 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (TYPE_2__* const) ; 
 int FUNC1 (TYPE_2__* const,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__* const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC4(const acl_t aclp, int *trivialp)
{
	acl_t tmpacl;
	int differs;

	if (aclp == NULL || trivialp == NULL) {
		errno = EINVAL;
		return (-1);
	}

	switch (FUNC0(aclp)) {
	case ACL_BRAND_POSIX:
		if (aclp->ats_acl.acl_cnt == 3)
			*trivialp = 1;
		else
			*trivialp = 0;

		return (0);

	case ACL_BRAND_NFS4:
		/*
		 * If the ACL has more than canonical six entries,
		 * it's non trivial by definition.
		 */
		if (aclp->ats_acl.acl_cnt > 6) {
			*trivialp = 0;
			return (0);
		}
			
		/*
		 * Calculate trivial ACL - using acl_strip_np(3) - and compare
		 * with the original.
		 */
		tmpacl = FUNC2(aclp, 0);
		if (tmpacl == NULL)
			return (-1);

		differs = FUNC1(aclp, tmpacl);
		FUNC3(tmpacl);

		if (differs == 0) {
			*trivialp = 1;
			return (0);
		}

		/*
		 * Try again with an old-style, "canonical six" trivial ACL.
		 */
		tmpacl = FUNC2(aclp, 1);
		if (tmpacl == NULL)
			return (-1);

		differs = FUNC1(aclp, tmpacl);
		FUNC3(tmpacl);

		if (differs)
			*trivialp = 0;
		else
			*trivialp = 1;

		return (0);

	default:
		errno = EINVAL;
		return (-1);
	}
}