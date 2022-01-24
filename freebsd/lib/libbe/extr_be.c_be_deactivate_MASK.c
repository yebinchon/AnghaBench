#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC3(libbe_handle_t *lbh, const char *ds)
{
	zfs_handle_t *zfs;

	if ((zfs = FUNC1(lbh->lzh, ds, ZFS_TYPE_DATASET)) == NULL)
		return (1);
	if (FUNC2(zfs, "canmount", "noauto") != 0)
		return (1);
	FUNC0(zfs);
	return (0);
}