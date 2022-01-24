#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_prop_activate_feature_check ; 
 int /*<<< orphan*/  zfs_prop_activate_feature_sync ; 

__attribute__((used)) static int
FUNC2(spa_t *spa, spa_feature_t feature)
{
	int err;

	/* EBUSY here indicates that the feature is already active */
	err = FUNC0(FUNC1(spa),
	    zfs_prop_activate_feature_check, zfs_prop_activate_feature_sync,
	    &feature, 2, ZFS_SPACE_CHECK_RESERVED);

	if (err != 0 && err != EBUSY)
		return (err);
	else
		return (0);
}