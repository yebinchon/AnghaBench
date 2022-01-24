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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_DELEG_EVERYONE_SETS ; 
 int /*<<< orphan*/  ZFS_DELEG_GROUP_SETS ; 
 int /*<<< orphan*/  ZFS_DELEG_USER_SETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(objset_t *mos, uint64_t zapobj, avl_tree_t *avl,
    char checkflag, cred_t *cr)
{
	const	gid_t *gids;
	int	ngids, i;
	uint64_t id;

	id = FUNC3(cr);
	(void) FUNC4(mos, zapobj,
	    ZFS_DELEG_USER_SETS, checkflag, &id, avl);

	id = FUNC0(cr);
	(void) FUNC4(mos, zapobj,
	    ZFS_DELEG_GROUP_SETS, checkflag, &id, avl);

	(void) FUNC4(mos, zapobj,
	    ZFS_DELEG_EVERYONE_SETS, checkflag, NULL, avl);

	ngids = FUNC2(cr);
	gids = FUNC1(cr);
	for (i = 0; i != ngids; i++) {
		id = gids[i];
		(void) FUNC4(mos, zapobj,
		    ZFS_DELEG_GROUP_SETS, checkflag, &id, avl);
	}
}