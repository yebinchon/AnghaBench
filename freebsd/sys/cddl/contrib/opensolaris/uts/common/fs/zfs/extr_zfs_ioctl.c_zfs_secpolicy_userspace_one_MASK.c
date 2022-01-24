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
struct TYPE_4__ {size_t zc_objset_type; scalar_t__* zc_value; scalar_t__ zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ZFS_NUM_USERQUOTA_PROPS ; 
 size_t ZFS_PROP_USERQUOTA ; 
 size_t ZFS_PROP_USERUSED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * userquota_perms ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	int err = FUNC3(zc, innvl, cr);
	if (err)
		return (err);

	if (zc->zc_objset_type >= ZFS_NUM_USERQUOTA_PROPS)
		return (FUNC0(EINVAL));

	if (zc->zc_value[0] == 0) {
		/*
		 * They are asking about a posix uid/gid.  If it's
		 * themself, allow it.
		 */
		if (zc->zc_objset_type == ZFS_PROP_USERUSED ||
		    zc->zc_objset_type == ZFS_PROP_USERQUOTA) {
			if (zc->zc_guid == FUNC1(cr))
				return (0);
		} else {
			if (FUNC2(zc->zc_guid, cr))
				return (0);
		}
	}

	return (FUNC4(zc->zc_name,
	    userquota_perms[zc->zc_objset_type], cr));
}