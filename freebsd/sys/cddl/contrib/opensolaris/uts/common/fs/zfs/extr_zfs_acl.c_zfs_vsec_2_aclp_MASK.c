#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  z_version; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_object_ace_t ;
typedef  int /*<<< orphan*/  zfs_fuid_info_t ;
struct TYPE_17__ {scalar_t__ z_version; int z_acl_count; int /*<<< orphan*/  z_hints; int /*<<< orphan*/  z_acl; int /*<<< orphan*/  z_acl_bytes; } ;
typedef  TYPE_2__ zfs_acl_t ;
struct TYPE_18__ {int z_ace_count; int /*<<< orphan*/  z_size; int /*<<< orphan*/  z_acldata; } ;
typedef  TYPE_3__ zfs_acl_node_t ;
typedef  int /*<<< orphan*/  vtype_t ;
struct TYPE_19__ {int vsa_aclcnt; int vsa_mask; int vsa_aclflags; scalar_t__ vsa_aclentp; } ;
typedef  TYPE_4__ vsecattr_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  ace_t ;

/* Variables and functions */
 int ACL_AUTO_INHERIT ; 
 int ACL_DEFAULTED ; 
 int ACL_PROTECTED ; 
 int /*<<< orphan*/  EINVAL ; 
 int MAX_ACL_ENTRIES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VSA_ACE_ACLFLAGS ; 
 int /*<<< orphan*/  ZFS_ACL_AUTO_INHERIT ; 
 int /*<<< orphan*/  ZFS_ACL_DEFAULTED ; 
 int /*<<< orphan*/  ZFS_ACL_PROTECTED ; 
 scalar_t__ ZFS_ACL_VERSION_INITIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC9(zfsvfs_t *zfsvfs, vtype_t obj_type,
    vsecattr_t *vsecp, cred_t *cr, zfs_fuid_info_t **fuidp, zfs_acl_t **zaclp)
{
	zfs_acl_t *aclp;
	zfs_acl_node_t *aclnode;
	int aclcnt = vsecp->vsa_aclcnt;
	int error;

	if (vsecp->vsa_aclcnt > MAX_ACL_ENTRIES || vsecp->vsa_aclcnt <= 0)
		return (FUNC0(EINVAL));

	aclp = FUNC2(FUNC6(zfsvfs->z_version));

	aclp->z_hints = 0;
	aclnode = FUNC4(aclcnt * sizeof (zfs_object_ace_t));
	if (aclp->z_version == ZFS_ACL_VERSION_INITIAL) {
		if ((error = FUNC8(obj_type, aclp,
		    (ace_t *)vsecp->vsa_aclentp, aclnode->z_acldata,
		    aclcnt, &aclnode->z_size)) != 0) {
			FUNC3(aclp);
			FUNC5(aclnode);
			return (error);
		}
	} else {
		if ((error = FUNC7(zfsvfs, obj_type, aclp,
		    vsecp->vsa_aclentp, aclnode->z_acldata, aclcnt,
		    &aclnode->z_size, fuidp, cr)) != 0) {
			FUNC3(aclp);
			FUNC5(aclnode);
			return (error);
		}
	}
	aclp->z_acl_bytes = aclnode->z_size;
	aclnode->z_ace_count = aclcnt;
	aclp->z_acl_count = aclcnt;
	FUNC1(&aclp->z_acl, aclnode);

	/*
	 * If flags are being set then add them to z_hints
	 */
	if (vsecp->vsa_mask & VSA_ACE_ACLFLAGS) {
		if (vsecp->vsa_aclflags & ACL_PROTECTED)
			aclp->z_hints |= ZFS_ACL_PROTECTED;
		if (vsecp->vsa_aclflags & ACL_DEFAULTED)
			aclp->z_hints |= ZFS_ACL_DEFAULTED;
		if (vsecp->vsa_aclflags & ACL_AUTO_INHERIT)
			aclp->z_hints |= ZFS_ACL_AUTO_INHERIT;
	}

	*zaclp = aclp;

	return (0);
}