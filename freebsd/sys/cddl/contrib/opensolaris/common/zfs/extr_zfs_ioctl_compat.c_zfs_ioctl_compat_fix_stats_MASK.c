#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_dst_size; int /*<<< orphan*/  zc_nvlist_dst; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc, const int nc)
{
	nvlist_t *nv, *nvp = NULL;
	nvpair_t *elem;
	int error;

	if ((error = FUNC4(zc->zc_nvlist_dst,
	    zc->zc_nvlist_dst_size, zc->zc_iflags, &nv)) != 0)
		return (error);

	if (nc == 5) { /* ZFS_IOC_POOL_STATS */
		elem = NULL;
		while ((elem = FUNC1(nv, elem)) != NULL) {
			if (FUNC2(elem, &nvp) == 0)
				FUNC3(nvp);
		}
		elem = NULL;
	} else
		FUNC3(nv);

	error = FUNC5(zc, nv);

	FUNC0(nv);

	return (error);
}