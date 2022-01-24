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
typedef  int /*<<< orphan*/  zprop_desc_t ;
typedef  scalar_t__ zfs_type_t ;

/* Variables and functions */
 scalar_t__ ZFS_TYPE_POOL ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static zprop_desc_t *
FUNC2(zfs_type_t type)
{
	if (type == ZFS_TYPE_POOL)
		return (FUNC1());
	else
		return (FUNC0());
}