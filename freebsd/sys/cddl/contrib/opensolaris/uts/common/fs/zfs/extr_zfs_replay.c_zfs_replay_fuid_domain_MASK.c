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
struct TYPE_6__ {int z_domain_cnt; int /*<<< orphan*/  z_domain_table; } ;
typedef  TYPE_1__ zfs_fuid_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zfs_fuid_info_t *
FUNC5(void *buf, void **end, uint64_t uid, uint64_t gid)
{
	int domcnt;

	zfs_fuid_info_t *fuid_infop;

	fuid_infop = FUNC1();

	domcnt = FUNC2(uid, gid);

	if (domcnt == 0)
		return (fuid_infop);

	fuid_infop->z_domain_table =
	    FUNC0(domcnt * sizeof (char **), KM_SLEEP);

	FUNC4(fuid_infop, uid, gid);

	fuid_infop->z_domain_cnt = domcnt;
	*end = FUNC3(fuid_infop, buf, domcnt);
	return (fuid_infop);
}