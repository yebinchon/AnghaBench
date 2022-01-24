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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc)
{
	nvlist_t *nv, *nva = NULL;
	int error;

	if ((error = FUNC4(zc->zc_nvlist_dst,
	    zc->zc_nvlist_dst_size, zc->zc_iflags, &nv)) != 0)
		return (error);

#ifdef _KERNEL
	if (nvlist_lookup_nvlist(nv, "allocated", &nva) == 0) {
		nvlist_add_nvlist(nv, "used", nva);
		nvlist_remove(nv, "allocated", DATA_TYPE_NVLIST);
	}

	if (nvlist_lookup_nvlist(nv, "free", &nva) == 0) {
		nvlist_add_nvlist(nv, "available", nva);
		nvlist_remove(nv, "free", DATA_TYPE_NVLIST);
	}
#else
	if (FUNC2(nv, "used", &nva) == 0) {
		FUNC0(nv, "allocated", nva);
		FUNC3(nv, "used", DATA_TYPE_NVLIST);
	}

	if (FUNC2(nv, "available", &nva) == 0) {
		FUNC0(nv, "free", nva);
		FUNC3(nv, "available", DATA_TYPE_NVLIST);
	}
#endif

	error = FUNC5(zc, nv);

	FUNC1(nv);

	return (error);
}