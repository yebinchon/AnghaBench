#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_14__ {TYPE_1__* z_vfs; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_15__ {int va_mask; int va_mode; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_type; } ;
typedef  TYPE_4__ vattr_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_12__ {int vfs_flag; } ;

/* Variables and functions */
 int AT_GID ; 
 int AT_MODE ; 
 int AT_TYPE ; 
 int AT_UID ; 
 int CREATE_XATTR_DIR ; 
 int /*<<< orphan*/  ENOATTR ; 
 int /*<<< orphan*/  ENOENT ; 
 int ERESTART ; 
 int /*<<< orphan*/  EROFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  VDIR ; 
 int VFS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZXATTR ; 
 int FUNC3 (TYPE_2__*,char*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int
FUNC6(znode_t *zp, vnode_t **xvpp, cred_t *cr, int flags)
{
	zfsvfs_t	*zfsvfs = zp->z_zfsvfs;
	znode_t		*xzp;
	vattr_t		va;
	int		error;
top:
	error = FUNC3(zp, "", &xzp, ZXATTR);
	if (error)
		return (error);

	if (xzp != NULL) {
		*xvpp = FUNC2(xzp);
		return (0);
	}


	if (!(flags & CREATE_XATTR_DIR)) {
#ifdef illumos
		return (SET_ERROR(ENOENT));
#else
		return (FUNC0(ENOATTR));
#endif
	}

	if (zfsvfs->z_vfs->vfs_flag & VFS_RDONLY) {
		return (FUNC0(EROFS));
	}

	/*
	 * The ability to 'create' files in an attribute
	 * directory comes from the write_xattr permission on the base file.
	 *
	 * The ability to 'search' an attribute directory requires
	 * read_xattr permission on the base file.
	 *
	 * Once in a directory the ability to read/write attributes
	 * is controlled by the permissions on the attribute file.
	 */
	va.va_mask = AT_TYPE | AT_MODE | AT_UID | AT_GID;
	va.va_type = VDIR;
	va.va_mode = S_IFDIR | S_ISVTX | 0777;
	FUNC4(zp, cr, &va.va_uid, &va.va_gid);

	error = FUNC5(zp, &va, xvpp, cr);

	if (error == ERESTART) {
		/* NB: we already did dmu_tx_wait() if necessary */
		goto top;
	}
	if (error == 0)
		FUNC1(*xvpp, 0);

	return (error);
}