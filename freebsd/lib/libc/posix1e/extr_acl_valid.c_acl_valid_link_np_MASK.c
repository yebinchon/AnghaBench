#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  acl_type_t ;
typedef  TYPE_1__* acl_t ;
struct TYPE_5__ {int /*<<< orphan*/  ats_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC4(const char *pathp, acl_type_t type, acl_t acl)
{

	if (pathp == NULL || acl == NULL) {
		errno = EINVAL;
		return (-1);
	}
	type = FUNC1(type);
	if (FUNC2(acl, type))
		FUNC3(acl);

	return (FUNC0(pathp, type, &acl->ats_acl));
}