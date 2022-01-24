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
struct TYPE_4__ {int /*<<< orphan*/  zdm_msg; } ;
typedef  TYPE_1__ zfs_dbgmsg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int zfs_dbgmsg_size ; 
 int /*<<< orphan*/  zfs_dbgmsgs ; 
 int /*<<< orphan*/  zfs_dbgmsgs_lock ; 

void
FUNC5(void)
{
	zfs_dbgmsg_t *zdm;

	while ((zdm = FUNC2(&zfs_dbgmsgs)) != NULL) {
		int size = sizeof (zfs_dbgmsg_t) + FUNC4(zdm->zdm_msg);
		FUNC1(zdm, size);
		zfs_dbgmsg_size -= size;
	}
	FUNC3(&zfs_dbgmsgs_lock);
	FUNC0(zfs_dbgmsg_size);
}