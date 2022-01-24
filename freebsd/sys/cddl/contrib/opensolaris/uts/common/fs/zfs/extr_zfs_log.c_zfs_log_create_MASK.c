#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int z_dnodesize; int /*<<< orphan*/  z_zfsvfs; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_gid; int /*<<< orphan*/  z_uid; int /*<<< orphan*/  z_mode; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_20__ {int z_fuid_cnt; int /*<<< orphan*/  z_domain_cnt; void* z_fuid_group; void* z_fuid_owner; scalar_t__ z_domain_str_sz; } ;
typedef  TYPE_2__ zfs_fuid_info_t ;
struct TYPE_21__ {int /*<<< orphan*/  xva_mapsize; } ;
typedef  TYPE_3__ xvattr_t ;
struct TYPE_22__ {size_t vsa_aclentsz; int vsa_aclflags; char* vsa_aclentp; int /*<<< orphan*/  vsa_aclcnt; } ;
typedef  TYPE_4__ vsecattr_t ;
struct TYPE_23__ {int va_mask; } ;
typedef  TYPE_5__ vattr_t ;
typedef  void* uint64_t ;
struct TYPE_24__ {scalar_t__ lr_rdev; scalar_t__* lr_crtime; scalar_t__ lr_gen; void* lr_gid; void* lr_uid; int /*<<< orphan*/  lr_mode; int /*<<< orphan*/  lr_foid; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_6__ lr_create_t ;
typedef  int /*<<< orphan*/  lr_attr_t ;
struct TYPE_25__ {size_t lr_acl_bytes; int lr_fuidcnt; void* lr_acl_flags; int /*<<< orphan*/  lr_domcnt; int /*<<< orphan*/  lr_aclcnt; } ;
typedef  TYPE_7__ lr_acl_create_t ;
struct TYPE_26__ {int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_8__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int AT_XVATTR ; 
 int DNODE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TX_CREATE ; 
 int TX_CREATE_ATTR ; 
 int TX_MKDIR ; 
 int TX_MKDIR_ATTR ; 
 int TX_MKXATTR ; 
 int VSA_ACE_ACLFLAGS ; 
 int FUNC5 (size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC9 (char*) ; 
 void* FUNC10 (TYPE_2__*,void*) ; 
 void* FUNC11 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC14 (void*,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC16(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, znode_t *zp, char *name, vsecattr_t *vsecp,
    zfs_fuid_info_t *fuidp, vattr_t *vap)
{
	itx_t *itx;
	lr_create_t *lr;
	lr_acl_create_t *lracl;
	size_t aclsize = (vsecp != NULL) ? vsecp->vsa_aclentsz : 0;
	size_t xvatsize = 0;
	size_t txsize;
	xvattr_t *xvap = (xvattr_t *)vap;
	void *end;
	size_t lrsize;
	size_t namesize = FUNC9(name) + 1;
	size_t fuidsz = 0;

	if (FUNC15(zilog, tx))
		return;

	/*
	 * If we have FUIDs present then add in space for
	 * domains and ACE fuid's if any.
	 */
	if (fuidp) {
		fuidsz += fuidp->z_domain_str_sz;
		fuidsz += fuidp->z_fuid_cnt * sizeof (uint64_t);
	}

	if (vap->va_mask & AT_XVATTR)
		xvatsize = FUNC6(xvap->xva_mapsize);

	if ((int)txtype == TX_CREATE_ATTR || (int)txtype == TX_MKDIR_ATTR ||
	    (int)txtype == TX_CREATE || (int)txtype == TX_MKDIR ||
	    (int)txtype == TX_MKXATTR) {
		txsize = sizeof (*lr) + namesize + fuidsz + xvatsize;
		lrsize = sizeof (*lr);
	} else {
		txsize =
		    sizeof (lr_acl_create_t) + namesize + fuidsz +
		    FUNC5(aclsize) + xvatsize;
		lrsize = sizeof (lr_acl_create_t);
	}

	itx = FUNC14(txtype, txsize);

	lr = (lr_create_t *)&itx->itx_lr;
	lr->lr_doid = dzp->z_id;
	lr->lr_foid = zp->z_id;
	/* Store dnode slot count in 8 bits above object id. */
	FUNC1(lr->lr_foid, zp->z_dnodesize >> DNODE_SHIFT);
	lr->lr_mode = zp->z_mode;
	if (!FUNC0(zp->z_uid)) {
		lr->lr_uid = (uint64_t)zp->z_uid;
	} else {
		lr->lr_uid = fuidp->z_fuid_owner;
	}
	if (!FUNC0(zp->z_gid)) {
		lr->lr_gid = (uint64_t)zp->z_gid;
	} else {
		lr->lr_gid = fuidp->z_fuid_group;
	}
	(void) FUNC8(zp->z_sa_hdl, FUNC3(zp->z_zfsvfs), &lr->lr_gen,
	    sizeof (uint64_t));
	(void) FUNC8(zp->z_sa_hdl, FUNC2(zp->z_zfsvfs),
	    lr->lr_crtime, sizeof (uint64_t) * 2);

	if (FUNC8(zp->z_sa_hdl, FUNC4(zp->z_zfsvfs), &lr->lr_rdev,
	    sizeof (lr->lr_rdev)) != 0)
		lr->lr_rdev = 0;

	/*
	 * Fill in xvattr info if any
	 */
	if (vap->va_mask & AT_XVATTR) {
		FUNC12((lr_attr_t *)((caddr_t)lr + lrsize), xvap);
		end = (caddr_t)lr + lrsize + xvatsize;
	} else {
		end = (caddr_t)lr + lrsize;
	}

	/* Now fill in any ACL info */

	if (vsecp) {
		lracl = (lr_acl_create_t *)&itx->itx_lr;
		lracl->lr_aclcnt = vsecp->vsa_aclcnt;
		lracl->lr_acl_bytes = aclsize;
		lracl->lr_domcnt = fuidp ? fuidp->z_domain_cnt : 0;
		lracl->lr_fuidcnt  = fuidp ? fuidp->z_fuid_cnt : 0;
		if (vsecp->vsa_aclflags & VSA_ACE_ACLFLAGS)
			lracl->lr_acl_flags = (uint64_t)vsecp->vsa_aclflags;
		else
			lracl->lr_acl_flags = 0;

		FUNC7(vsecp->vsa_aclentp, end, aclsize);
		end = (caddr_t)end + FUNC5(aclsize);
	}

	/* drop in FUID info */
	if (fuidp) {
		end = FUNC11(fuidp, end);
		end = FUNC10(fuidp, end);
	}
	/*
	 * Now place file name in log record
	 */
	FUNC7(name, end, namesize);

	FUNC13(zilog, itx, tx);
}