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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/ * acl_t ;

/* Variables and functions */
#define  ACL_BRAND_NFS4 129 
#define  ACL_BRAND_POSIX 128 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 

char *
FUNC3(acl_t acl, ssize_t *len_p, int flags)
{

	if (acl == NULL) {
		errno = EINVAL;
		return(NULL);
	}

	switch (FUNC0(acl)) {
	case ACL_BRAND_POSIX:
		return (FUNC2(acl, len_p, flags));
	case ACL_BRAND_NFS4:
		return (FUNC1(acl, len_p, flags));
	default:
		errno = EINVAL;
		return (NULL);
	}
}