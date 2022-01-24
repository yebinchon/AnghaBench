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
typedef  int /*<<< orphan*/ * acl_flagset_t ;
typedef  TYPE_1__* acl_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  ae_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_BRAND_NFS4 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC3(acl_entry_t entry_d, acl_flagset_t flagset_d)
{

	if (entry_d == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (!FUNC1(entry_d, ACL_BRAND_NFS4)) {
		errno = EINVAL;
		return (-1);
	}

	FUNC0(entry_d, ACL_BRAND_NFS4);

	if (FUNC2(*flagset_d))
		return (-1);

	entry_d->ae_flags = *flagset_d;

	return (0);
}