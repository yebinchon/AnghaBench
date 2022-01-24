#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_27__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
struct TYPE_37__ {char z_size; int /*<<< orphan*/  z_sa_hdl; scalar_t__ z_is_sa; int /*<<< orphan*/  z_id; TYPE_3__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_38__ {TYPE_27__* z_os; int /*<<< orphan*/  z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_3__ zfsvfs_t ;
struct TYPE_39__ {TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_40__ {scalar_t__ va_type; } ;
typedef  TYPE_5__ vattr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  kthread_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_36__ {scalar_t__ os_sync; } ;
struct TYPE_35__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 scalar_t__ TX_SYMLINK ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 scalar_t__ VLNK ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZNEW ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_27__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 scalar_t__ FUNC25 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC26 (TYPE_2__*,char*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,char*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC33 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC35(vnode_t *dvp, vnode_t **vpp, char *name, vattr_t *vap, char *link,
    cred_t *cr, kthread_t *td)
{
	znode_t		*zp, *dzp = FUNC5(dvp);
	dmu_tx_t	*tx;
	zfsvfs_t	*zfsvfs = dzp->z_zfsvfs;
	zilog_t		*zilog;
	uint64_t	len = FUNC21(link);
	int		error;
	zfs_acl_ids_t	acl_ids;
	boolean_t	fuid_dirtied;
	uint64_t	txtype = TX_SYMLINK;
	int		flags = 0;

	FUNC0(vap->va_type == VLNK);

	FUNC6(zfsvfs);
	FUNC8(dzp);
	zilog = zfsvfs->z_log;

	if (zfsvfs->z_utf8 && FUNC22(name, FUNC21(name),
	    NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC7(zfsvfs);
		return (FUNC4(EILSEQ));
	}

	if (len > MAXPATHLEN) {
		FUNC7(zfsvfs);
		return (FUNC4(ENAMETOOLONG));
	}

	if ((error = FUNC23(dzp, 0,
	    vap, cr, NULL, &acl_ids)) != 0) {
		FUNC7(zfsvfs);
		return (error);
	}

	/*
	 * Attempt to lock directory; fail if entry already exists.
	 */
	error = FUNC26(dzp, name, &zp, ZNEW);
	if (error) {
		FUNC24(&acl_ids);
		FUNC7(zfsvfs);
		return (error);
	}

	if ((error = FUNC33(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
		FUNC24(&acl_ids);
		FUNC7(zfsvfs);
		return (error);
	}

	if (FUNC25(zfsvfs, &acl_ids)) {
		FUNC24(&acl_ids);
		FUNC7(zfsvfs);
		return (FUNC4(EDQUOT));
	}

	FUNC19(1);
	tx = FUNC13(zfsvfs->z_os);
	fuid_dirtied = zfsvfs->z_fuid_dirty;
	FUNC16(tx, DMU_NEW_OBJECT, 0, FUNC1(1, len));
	FUNC17(tx, dzp->z_id, TRUE, name);
	FUNC15(tx, acl_ids.z_aclp->z_acl_bytes +
	    ZFS_SA_BASE_ATTR_SIZE + len);
	FUNC14(tx, dzp->z_sa_hdl, B_FALSE);
	if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
		FUNC16(tx, DMU_NEW_OBJECT, 0,
		    acl_ids.z_aclp->z_acl_bytes);
	}
	if (fuid_dirtied)
		FUNC28(zfsvfs, tx);
	error = FUNC11(tx, TXG_WAIT);
	if (error) {
		FUNC24(&acl_ids);
		FUNC10(tx);
		FUNC18();
		FUNC7(zfsvfs);
		return (error);
	}

	/*
	 * Create a new object for the symlink.
	 * for version 4 ZPL datsets the symlink will be an SA attribute
	 */
	FUNC31(dzp, vap, tx, cr, 0, &zp, &acl_ids);

	if (fuid_dirtied)
		FUNC27(zfsvfs, tx);

	if (zp->z_is_sa)
		error = FUNC20(zp->z_sa_hdl, FUNC3(zfsvfs),
		    link, len, tx);
	else
		FUNC32(zp, link, len, tx);

	zp->z_size = len;
	(void) FUNC20(zp->z_sa_hdl, FUNC2(zfsvfs),
	    &zp->z_size, sizeof (zp->z_size), tx);
	/*
	 * Insert the new object into the directory.
	 */
	(void) FUNC29(dzp, name, zp, tx, ZNEW);

	FUNC30(zilog, tx, txtype, dzp, zp, name, link);
	*vpp = FUNC9(zp);

	FUNC24(&acl_ids);

	FUNC12(tx);

	FUNC18();

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC34(zilog, 0);

	FUNC7(zfsvfs);
	return (error);
}