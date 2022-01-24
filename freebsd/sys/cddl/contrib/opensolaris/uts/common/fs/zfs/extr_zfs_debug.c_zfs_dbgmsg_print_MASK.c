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
struct TYPE_5__ {char const* zdm_msg; } ;
typedef  TYPE_1__ zfs_dbgmsg_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  zfs_dbgmsgs ; 
 int /*<<< orphan*/  zfs_dbgmsgs_lock ; 

void
FUNC5(const char *tag)
{
	zfs_dbgmsg_t *zdm;

	(void) FUNC4("ZFS_DBGMSG(%s):\n", tag);
	FUNC2(&zfs_dbgmsgs_lock);
	for (zdm = FUNC0(&zfs_dbgmsgs); zdm;
	    zdm = FUNC1(&zfs_dbgmsgs, zdm))
		(void) FUNC4("%s\n", zdm->zdm_msg);
	FUNC3(&zfs_dbgmsgs_lock);
}