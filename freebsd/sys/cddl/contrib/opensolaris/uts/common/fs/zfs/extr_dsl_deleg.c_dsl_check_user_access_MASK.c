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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_DELEG_EVERYONE ; 
 int /*<<< orphan*/  ZFS_DELEG_GROUP ; 
 int /*<<< orphan*/  ZFS_DELEG_USER ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*,char const*) ; 

__attribute__((used)) static int
FUNC6(objset_t *mos, uint64_t zapobj, const char *perm,
    int checkflag, cred_t *cr)
{
	const	gid_t *gids;
	int	ngids;
	int	i;
	uint64_t id;

	/* check for user */
	id = FUNC4(cr);
	if (FUNC5(mos, zapobj,
	    ZFS_DELEG_USER, checkflag, &id, perm) == 0)
		return (0);

	/* check for users primary group */
	id = FUNC1(cr);
	if (FUNC5(mos, zapobj,
	    ZFS_DELEG_GROUP, checkflag, &id, perm) == 0)
		return (0);

	/* check for everyone entry */
	id = -1;
	if (FUNC5(mos, zapobj,
	    ZFS_DELEG_EVERYONE, checkflag, &id, perm) == 0)
		return (0);

	/* check each supplemental group user is a member of */
	ngids = FUNC3(cr);
	gids = FUNC2(cr);
	for (i = 0; i != ngids; i++) {
		id = gids[i];
		if (FUNC5(mos, zapobj,
		    ZFS_DELEG_GROUP, checkflag, &id, perm) == 0)
			return (0);
	}

	return (FUNC0(EPERM));
}