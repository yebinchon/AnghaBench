#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  acl_type_t ;
typedef  TYPE_1__* acl_t ;
struct TYPE_6__ {int /*<<< orphan*/  ats_acl; scalar_t__ ats_cur_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC5(int fd, acl_t acl, acl_type_t type)
{

	if (acl == NULL) {
		errno = EINVAL;
		return (-1);
	}
	type = FUNC2(type);
	if (FUNC1(acl, type)) {
		errno = EINVAL;
		return (-1);
	}
	if (FUNC3(acl, type))
		FUNC4(acl);

	acl->ats_cur_entry = 0;

	return (FUNC0(fd, type, &acl->ats_acl));
}