#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_17__ ;

/* Type definitions */
struct TYPE_25__ {int z_pflags; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_uid; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_26__ {scalar_t__ z_shares_dir; TYPE_17__* z_os; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_27__ {scalar_t__ v_type; } ;
typedef  TYPE_3__ vnode_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
struct TYPE_24__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 scalar_t__ TX_LINK ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC3 (TYPE_3__*) ; 
 int ZFS_APPENDONLY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int ZFS_IMMUTABLE ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 int ZFS_READONLY ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int ZFS_XATTR ; 
 int /*<<< orphan*/  ZNEW ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_1__*,char*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC26(vnode_t *tdvp, vnode_t *svp, char *name, cred_t *cr,
    caller_context_t *ct, int flags)
{
	znode_t		*dzp = FUNC3(tdvp);
	znode_t		*tzp, *szp;
	zfsvfs_t	*zfsvfs = dzp->z_zfsvfs;
	zilog_t		*zilog;
	dmu_tx_t	*tx;
	int		error;
	uint64_t	parent;
	uid_t		owner;

	FUNC0(tdvp->v_type == VDIR);

	FUNC4(zfsvfs);
	FUNC6(dzp);
	zilog = zfsvfs->z_log;

	/*
	 * POSIX dictates that we return EPERM here.
	 * Better choices include ENOTSUP or EISDIR.
	 */
	if (svp->v_type == VDIR) {
		FUNC5(zfsvfs);
		return (FUNC2(EPERM));
	}

	szp = FUNC3(svp);
	FUNC6(szp);

	if (szp->z_pflags & (ZFS_APPENDONLY | ZFS_IMMUTABLE | ZFS_READONLY)) {
		FUNC5(zfsvfs);
		return (FUNC2(EPERM));
	}

	/* Prevent links to .zfs/shares files */

	if ((error = FUNC14(szp->z_sa_hdl, FUNC1(zfsvfs),
	    &parent, sizeof (uint64_t))) != 0) {
		FUNC5(zfsvfs);
		return (error);
	}
	if (parent == zfsvfs->z_shares_dir) {
		FUNC5(zfsvfs);
		return (FUNC2(EPERM));
	}

	if (zfsvfs->z_utf8 && FUNC17(name,
	    FUNC16(name), NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC5(zfsvfs);
		return (FUNC2(EILSEQ));
	}

	/*
	 * We do not support links between attributes and non-attributes
	 * because of the potential security risk of creating links
	 * into "normal" file space in order to circumvent restrictions
	 * imposed in attribute space.
	 */
	if ((szp->z_pflags & ZFS_XATTR) != (dzp->z_pflags & ZFS_XATTR)) {
		FUNC5(zfsvfs);
		return (FUNC2(EINVAL));
	}


	owner = FUNC20(zfsvfs, szp->z_uid, cr, ZFS_OWNER);
	if (owner != FUNC7(cr) && FUNC15(svp, cr) != 0) {
		FUNC5(zfsvfs);
		return (FUNC2(EPERM));
	}

	if ((error = FUNC24(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
		FUNC5(zfsvfs);
		return (error);
	}

	/*
	 * Attempt to lock directory; fail if entry already exists.
	 */
	error = FUNC19(dzp, name, &tzp, ZNEW);
	if (error) {
		FUNC5(zfsvfs);
		return (error);
	}

	tx = FUNC11(zfsvfs->z_os);
	FUNC12(tx, szp->z_sa_hdl, B_FALSE);
	FUNC13(tx, dzp->z_id, TRUE, name);
	FUNC23(tx, szp);
	FUNC23(tx, dzp);
	error = FUNC9(tx, TXG_WAIT);
	if (error) {
		FUNC8(tx);
		FUNC5(zfsvfs);
		return (error);
	}

	error = FUNC21(dzp, name, szp, tx, 0);

	if (error == 0) {
		uint64_t txtype = TX_LINK;
		FUNC22(zilog, tx, txtype, dzp, szp, name);
	}

	FUNC10(tx);

	if (error == 0) {
		FUNC18(svp, ct);
	}

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC25(zilog, 0);

	FUNC5(zfsvfs);
	return (error);
}