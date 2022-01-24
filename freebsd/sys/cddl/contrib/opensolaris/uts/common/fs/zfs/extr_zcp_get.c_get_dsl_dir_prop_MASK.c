#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;

/* Variables and functions */
 int ENOENT ; 
#define  ZFS_PROP_LOGICALUSED 132 
#define  ZFS_PROP_USEDCHILD 131 
#define  ZFS_PROP_USEDDS 130 
#define  ZFS_PROP_USEDREFRESERV 129 
#define  ZFS_PROP_USEDSNAP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(dsl_dataset_t *ds, zfs_prop_t zfs_prop,
    uint64_t *val)
{
	dsl_dir_t *dd = ds->ds_dir;
	FUNC5(&dd->dd_lock);
	switch (zfs_prop) {
	case ZFS_PROP_USEDSNAP:
		*val = FUNC4(dd);
		break;
	case ZFS_PROP_USEDCHILD:
		*val = FUNC1(dd);
		break;
	case ZFS_PROP_USEDDS:
		*val = FUNC2(dd);
		break;
	case ZFS_PROP_USEDREFRESERV:
		*val = FUNC3(dd);
		break;
	case ZFS_PROP_LOGICALUSED:
		*val = FUNC0(dd);
		break;
	default:
		FUNC6(&dd->dd_lock);
		return (ENOENT);
	}
	FUNC6(&dd->dd_lock);
	return (0);
}