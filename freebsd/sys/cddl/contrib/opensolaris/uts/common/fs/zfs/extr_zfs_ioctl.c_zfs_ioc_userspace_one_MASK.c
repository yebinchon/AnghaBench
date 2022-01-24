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
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_3__ {int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_objset_type; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_NUM_USERQUOTA_PROPS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfs_cmd_t *zc)
{
	zfsvfs_t *zfsvfs;
	int error;

	if (zc->zc_objset_type >= ZFS_NUM_USERQUOTA_PROPS)
		return (FUNC0(EINVAL));

	error = FUNC2(zc->zc_name, FTAG, &zfsvfs, B_FALSE);
	if (error != 0)
		return (error);

	error = FUNC1(zfsvfs,
	    zc->zc_objset_type, zc->zc_value, zc->zc_guid, &zc->zc_cookie);
	FUNC3(zfsvfs, FTAG);

	return (error);
}