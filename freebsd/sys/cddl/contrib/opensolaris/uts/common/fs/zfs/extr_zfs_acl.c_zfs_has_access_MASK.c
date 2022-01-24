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
struct TYPE_5__ {int /*<<< orphan*/  z_uid; int /*<<< orphan*/  z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ALL_PERMS ; 
 int B_TRUE ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

boolean_t
FUNC4(znode_t *zp, cred_t *cr)
{
	uint32_t have = ACE_ALL_PERMS;

	if (FUNC3(zp, &have, B_TRUE, cr) != 0) {
		uid_t owner;

		owner = FUNC2(zp->z_zfsvfs, zp->z_uid, cr, ZFS_OWNER);
		return (FUNC1(cr, FUNC0(zp), owner) == 0);
	}
	return (B_TRUE);
}