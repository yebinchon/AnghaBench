#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_id; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_23__ {TYPE_14__* z_os; int /*<<< orphan*/  z_unlinkedobj; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_24__ {scalar_t__ v_type; } ;
typedef  TYPE_3__ vnode_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_21__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  TX_RMDIR ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ZEXISTS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZFS_NO_OBJECT ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  ct ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(vnode_t *dvp, vnode_t *vp, char *name, cred_t *cr)
{
	znode_t		*dzp = FUNC1(dvp);
	znode_t		*zp = FUNC1(vp);
	zfsvfs_t	*zfsvfs = dzp->z_zfsvfs;
	zilog_t		*zilog;
	dmu_tx_t	*tx;
	int		error;

	FUNC2(zfsvfs);
	FUNC4(dzp);
	FUNC4(zp);
	zilog = zfsvfs->z_log;


	if ((error = FUNC17(dzp, zp, cr))) {
		goto out;
	}

	if (vp->v_type != VDIR) {
		error = FUNC0(ENOTDIR);
		goto out;
	}

	FUNC13(vp, dvp, name, ct);

	tx = FUNC9(zfsvfs->z_os);
	FUNC11(tx, dzp->z_id, FALSE, name);
	FUNC10(tx, zp->z_sa_hdl, B_FALSE);
	FUNC11(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);
	FUNC16(tx, zp);
	FUNC16(tx, dzp);
	FUNC12(tx);
	error = FUNC7(tx, TXG_WAIT);
	if (error) {
		FUNC6(tx);
		FUNC3(zfsvfs);
		return (error);
	}

	FUNC5(dvp);

	error = FUNC14(dzp, name, zp, tx, ZEXISTS, NULL);

	if (error == 0) {
		uint64_t txtype = TX_RMDIR;
		FUNC15(zilog, tx, txtype, dzp, name, ZFS_NO_OBJECT);
	}

	FUNC8(tx);

	FUNC5(vp);
out:
	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC18(zilog, 0);

	FUNC3(zfsvfs);
	return (error);
}