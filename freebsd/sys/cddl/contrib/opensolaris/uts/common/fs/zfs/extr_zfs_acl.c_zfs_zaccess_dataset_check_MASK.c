#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int z_pflags; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_3__ znode_t ;
typedef  int uint32_t ;
struct TYPE_7__ {TYPE_1__* z_vfs; } ;
struct TYPE_6__ {int vfs_flag; } ;

/* Variables and functions */
 int ACE_DELETE ; 
 int ACE_DELETE_CHILD ; 
 int ACE_EXECUTE ; 
 int ACE_READ_DATA ; 
 int EACCES ; 
 int EPERM ; 
 int EROFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int VFS_RDONLY ; 
 int WRITE_MASK ; 
 int WRITE_MASK_ATTRS ; 
 int WRITE_MASK_DATA ; 
 int ZFS_AV_QUARANTINED ; 
 int ZFS_IMMUTABLE ; 
 int ZFS_NOUNLINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC3(znode_t *zp, uint32_t v4_mode)
{
	if ((v4_mode & WRITE_MASK) &&
	    (zp->z_zfsvfs->z_vfs->vfs_flag & VFS_RDONLY) &&
	    (!FUNC0(FUNC2(zp)) ||
	    (FUNC0(FUNC2(zp)) && (v4_mode & WRITE_MASK_ATTRS)))) {
		return (FUNC1(EROFS));
	}

	/*
	 * Intentionally allow ZFS_READONLY through here.
	 * See zfs_zaccess_common().
	 */
	if ((v4_mode & WRITE_MASK_DATA) &&
	    (zp->z_pflags & ZFS_IMMUTABLE)) {
		return (FUNC1(EPERM));
	}

#ifdef illumos
	if ((v4_mode & (ACE_DELETE | ACE_DELETE_CHILD)) &&
	    (zp->z_pflags & ZFS_NOUNLINK)) {
		return (SET_ERROR(EPERM));
	}
#else
	/*
	 * In FreeBSD we allow to modify directory's content is ZFS_NOUNLINK
	 * (sunlnk) is set. We just don't allow directory removal, which is
	 * handled in zfs_zaccess_delete().
	 */
	if ((v4_mode & ACE_DELETE) &&
	    (zp->z_pflags & ZFS_NOUNLINK)) {
		return (EPERM);
	}
#endif

	if (((v4_mode & (ACE_READ_DATA|ACE_EXECUTE)) &&
	    (zp->z_pflags & ZFS_AV_QUARANTINED))) {
		return (FUNC1(EACCES));
	}

	return (0);
}