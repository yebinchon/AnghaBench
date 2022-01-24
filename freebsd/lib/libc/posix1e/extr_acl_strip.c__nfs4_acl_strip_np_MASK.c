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
typedef  int /*<<< orphan*/  mode_t ;
typedef  TYPE_1__* acl_t ;
struct TYPE_6__ {int /*<<< orphan*/  ats_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_BRAND_NFS4 ; 
 int /*<<< orphan*/  ACL_MAX_ENTRIES ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static acl_t
FUNC4(const acl_t aclp, int canonical_six)
{
	acl_t newacl;
	mode_t mode = 0;

	newacl = FUNC1(ACL_MAX_ENTRIES);
	if (newacl == NULL) {
		errno = ENOMEM;
		return (NULL);
	}

	FUNC0(newacl, ACL_BRAND_NFS4);

	FUNC2(&mode, &(aclp->ats_acl));
	FUNC3(&(newacl->ats_acl), mode, canonical_six);

	return (newacl);
}