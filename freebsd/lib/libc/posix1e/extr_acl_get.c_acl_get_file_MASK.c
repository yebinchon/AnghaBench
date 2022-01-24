#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  acl_type_t ;
typedef  TYPE_1__* acl_t ;
struct TYPE_8__ {int /*<<< orphan*/  acl_maxcnt; } ;
struct TYPE_7__ {TYPE_6__ ats_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_ENTRIES ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

acl_t
FUNC5(const char *path_p, acl_type_t type)
{
	acl_t	aclp;
	int	error;

	aclp = FUNC4(ACL_MAX_ENTRIES);
	if (aclp == NULL)
		return (NULL);

	type = FUNC2(type);
	error = FUNC0(path_p, type, &aclp->ats_acl);
	if (error) {
		FUNC3(aclp);
		return (NULL);
	}

	aclp->ats_acl.acl_maxcnt = ACL_MAX_ENTRIES;
	FUNC1(aclp, type);

	return (aclp);
}