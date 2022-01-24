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
struct TYPE_3__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  parentname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_DELEG_PERM_CLONE ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_CREATE ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_MOUNT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	char	parentname[ZFS_MAX_DATASET_NAME_LEN];
	int	error;
	char	*origin;

	if ((error = FUNC1(zc->zc_name, parentname,
	    sizeof (parentname))) != 0)
		return (error);

	if (FUNC0(innvl, "origin", &origin) == 0 &&
	    (error = FUNC2(origin,
	    ZFS_DELEG_PERM_CLONE, cr)) != 0)
		return (error);

	if ((error = FUNC2(parentname,
	    ZFS_DELEG_PERM_CREATE, cr)) != 0)
		return (error);

	return (FUNC2(parentname,
	    ZFS_DELEG_PERM_MOUNT, cr));
}