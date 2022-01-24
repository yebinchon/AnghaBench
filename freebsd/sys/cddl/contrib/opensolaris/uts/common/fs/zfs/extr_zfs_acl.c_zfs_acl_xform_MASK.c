#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_19__ {int /*<<< orphan*/  z_access_mask; int /*<<< orphan*/  z_fuid; void* z_type; void* z_flags; } ;
typedef  TYPE_2__ zfs_oldace_t ;
typedef  int /*<<< orphan*/  zfs_object_ace_t ;
struct TYPE_20__ {scalar_t__ z_version; int z_acl_count; int /*<<< orphan*/  z_acl_bytes; int /*<<< orphan*/  z_acl; int /*<<< orphan*/  z_ops; } ;
typedef  TYPE_3__ zfs_acl_t ;
struct TYPE_21__ {int z_ace_count; int /*<<< orphan*/  z_size; int /*<<< orphan*/  z_acldata; } ;
typedef  TYPE_4__ zfs_acl_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* uint16_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_17__ {int /*<<< orphan*/  v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ZFS_ACL_VERSION ; 
 scalar_t__ ZFS_ACL_VERSION_INITIAL ; 
 TYPE_15__* FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  zfs_acl_fuid_ops ; 
 void* FUNC6 (TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,void**) ; 
 TYPE_4__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(znode_t *zp, zfs_acl_t *aclp, cred_t *cr)
{
	zfs_oldace_t *oldaclp;
	int i;
	uint16_t type, iflags;
	uint32_t access_mask;
	uint64_t who;
	void *cookie = NULL;
	zfs_acl_node_t *newaclnode;

	FUNC0(aclp->z_version == ZFS_ACL_VERSION_INITIAL);
	/*
	 * First create the ACE in a contiguous piece of memory
	 * for zfs_copy_ace_2_fuid().
	 *
	 * We only convert an ACL once, so this won't happen
	 * everytime.
	 */
	oldaclp = FUNC3(sizeof (zfs_oldace_t) * aclp->z_acl_count,
	    KM_SLEEP);
	i = 0;
	while ((cookie = FUNC6(aclp, cookie, &who,
	    &access_mask, &iflags, &type))) {
		oldaclp[i].z_flags = iflags;
		oldaclp[i].z_type = type;
		oldaclp[i].z_fuid = who;
		oldaclp[i++].z_access_mask = access_mask;
	}

	newaclnode = FUNC7(aclp->z_acl_count *
	    sizeof (zfs_object_ace_t));
	aclp->z_ops = zfs_acl_fuid_ops;
	FUNC1(FUNC9(zp->z_zfsvfs, FUNC2(zp)->v_type, aclp,
	    oldaclp, newaclnode->z_acldata, aclp->z_acl_count,
	    &newaclnode->z_size, NULL, cr) == 0);
	newaclnode->z_ace_count = aclp->z_acl_count;
	aclp->z_version = ZFS_ACL_VERSION;
	FUNC4(oldaclp, aclp->z_acl_count * sizeof (zfs_oldace_t));

	/*
	 * Release all previous ACL nodes
	 */

	FUNC8(aclp);

	FUNC5(&aclp->z_acl, newaclnode);

	aclp->z_acl_bytes = newaclnode->z_size;
	aclp->z_acl_count = newaclnode->z_ace_count;

}