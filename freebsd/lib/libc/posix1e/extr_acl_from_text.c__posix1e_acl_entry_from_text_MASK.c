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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int acl_tag_t ;
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  acl_perm_t ;

/* Variables and functions */
 scalar_t__ ACL_BRAND_POSIX ; 
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static int
FUNC9(acl_t aclp, char *entry)
{
	acl_tag_t	 t;
	acl_perm_t	 p;
	char		*tag, *qualifier, *permission;
	uid_t		 id;
	int		 error;

	FUNC5(FUNC0(aclp) == ACL_BRAND_POSIX);

	/* Split into three ':' delimited fields. */
	tag = FUNC8(&entry, ":");
	if (tag == NULL) {
		errno = EINVAL;
		return (-1);
	}
	tag = FUNC6(tag);
	if ((*tag == '\0') && (!entry)) {
		/*
		 * Is an entirely comment line, skip to next
		 * comma.
		 */
		return (0);
	}
	FUNC7(tag);

	qualifier = FUNC8(&entry, ":");
	if (qualifier == NULL) {
		errno = EINVAL;
		return (-1);
	}
	qualifier = FUNC6(qualifier);
	FUNC7(qualifier);

	permission = FUNC8(&entry, ":");
	if (permission == NULL || entry) {
		errno = EINVAL;
		return (-1);
	}
	permission = FUNC6(permission);
	FUNC7(permission);

	t = FUNC4(tag, qualifier);
	if (t == -1) {
		errno = EINVAL;
		return (-1);
	}

	error = FUNC3(permission, &p);
	if (error == -1) {
		errno = EINVAL;
		return (-1);
	}		

	switch(t) {
		case ACL_USER_OBJ:
		case ACL_GROUP_OBJ:
		case ACL_MASK:
		case ACL_OTHER:
			if (*qualifier != '\0') {
				errno = EINVAL;
				return (-1);
			}
			id = 0;
			break;

		case ACL_USER:
		case ACL_GROUP:
			error = FUNC1(t, qualifier, &id);
			if (error == -1)
				return (-1);
			break;

		default:
			errno = EINVAL;
			return (-1);
	}

	error = FUNC2(aclp, t, id, p);
	if (error == -1)
		return (-1);

	return (0);
}