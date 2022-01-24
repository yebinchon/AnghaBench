#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_17__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  z_sa_hdl; scalar_t__ z_id; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_27__ {TYPE_17__* z_os; scalar_t__ z_unlinkedobj; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  xattr_obj ;
struct TYPE_28__ {scalar_t__ v_type; int /*<<< orphan*/  v_vflag; } ;
typedef  TYPE_3__ vnode_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_25__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 scalar_t__ TX_REMOVE ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  VV_NOSYNC ; 
 int /*<<< orphan*/  ZEXISTS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ct ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_2__*,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(vnode_t *dvp, vnode_t *vp, char *name, cred_t *cr)
{
	znode_t		*dzp = FUNC3(dvp);
	znode_t		*zp = FUNC3(vp);
	znode_t		*xzp;
	zfsvfs_t	*zfsvfs = dzp->z_zfsvfs;
	zilog_t		*zilog;
	uint64_t	acl_obj, xattr_obj;
	uint64_t	obj = 0;
	dmu_tx_t	*tx;
	boolean_t	unlinked, toobig = FALSE;
	uint64_t	txtype;
	int		error;

	FUNC4(zfsvfs);
	FUNC6(dzp);
	FUNC6(zp);
	zilog = zfsvfs->z_log;
	zp = FUNC3(vp);

	xattr_obj = 0;
	xzp = NULL;

	if ((error = FUNC22(dzp, zp, cr))) {
		goto out;
	}

	/*
	 * Need to use rmdir for removing directories.
	 */
	if (vp->v_type == VDIR) {
		error = FUNC2(EPERM);
		goto out;
	}

	FUNC16(vp, dvp, name, ct);

	obj = zp->z_id;

	/* are there any extended attributes? */
	error = FUNC15(zp->z_sa_hdl, FUNC1(zfsvfs),
	    &xattr_obj, sizeof (xattr_obj));
	if (error == 0 && xattr_obj) {
		error = FUNC23(zfsvfs, xattr_obj, &xzp);
		FUNC0(error);
	}

	/*
	 * We may delete the znode now, or we may put it in the unlinked set;
	 * it depends on whether we're the last link, and on whether there are
	 * other holds on the vnode.  So we dmu_tx_hold() the right things to
	 * allow for either case.
	 */
	tx = FUNC11(zfsvfs->z_os);
	FUNC13(tx, dzp->z_id, FALSE, name);
	FUNC12(tx, zp->z_sa_hdl, B_FALSE);
	FUNC20(tx, zp);
	FUNC20(tx, dzp);

	if (xzp) {
		FUNC12(tx, zp->z_sa_hdl, B_TRUE);
		FUNC12(tx, xzp->z_sa_hdl, B_FALSE);
	}

	/* charge as an update -- would be nice not to charge at all */
	FUNC13(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);

	/*
	 * Mark this transaction as typically resulting in a net free of space
	 */
	FUNC14(tx);

	error = FUNC9(tx, TXG_WAIT);
	if (error) {
		FUNC8(tx);
		FUNC5(zfsvfs);
		return (error);
	}

	/*
	 * Remove the directory entry.
	 */
	error = FUNC18(dzp, name, zp, tx, ZEXISTS, &unlinked);

	if (error) {
		FUNC10(tx);
		goto out;
	}

	if (unlinked) {
		FUNC21(zp, tx);
		vp->v_vflag |= VV_NOSYNC;
	}

	txtype = TX_REMOVE;
	FUNC19(zilog, tx, txtype, dzp, name, obj);

	FUNC10(tx);
out:

	if (xzp)
		FUNC17(FUNC7(xzp));

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC24(zilog, 0);

	FUNC5(zfsvfs);
	return (error);
}