#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ z_sync_cnt; int /*<<< orphan*/  z_id; TYPE_1__* z_zfsvfs; scalar_t__ z_unlinked; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_16__ {int z_domain_str_sz; int z_fuid_cnt; int /*<<< orphan*/  z_domain_cnt; } ;
typedef  TYPE_3__ zfs_fuid_info_t ;
struct TYPE_17__ {size_t vsa_aclentsz; int vsa_mask; int /*<<< orphan*/  vsa_aclentp; int /*<<< orphan*/  vsa_aclcnt; int /*<<< orphan*/  vsa_aclflags; } ;
typedef  TYPE_4__ vsecattr_t ;
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  lr_acl_v0_t ;
struct TYPE_18__ {size_t lr_acl_bytes; int lr_fuidcnt; void* lr_aclcnt; void* lr_acl_flags; int /*<<< orphan*/  lr_domcnt; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_5__ lr_acl_t ;
struct TYPE_19__ {int itx_sync; int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_6__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int caddr_t ;
typedef  void ace_t ;
struct TYPE_14__ {scalar_t__ z_version; } ;

/* Variables and functions */
 int TX_ACL ; 
 int TX_ACL_V0 ; 
 int VSA_ACE_ACLFLAGS ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ ZPL_VERSION_FUID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*) ; 
 void* FUNC3 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (int,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(zilog_t *zilog, dmu_tx_t *tx, znode_t *zp,
    vsecattr_t *vsecp, zfs_fuid_info_t *fuidp)
{
	itx_t *itx;
	lr_acl_v0_t *lrv0;
	lr_acl_t *lr;
	int txtype;
	int lrsize;
	size_t txsize;
	size_t aclbytes = vsecp->vsa_aclentsz;

	if (FUNC6(zilog, tx) || zp->z_unlinked)
		return;

	txtype = (zp->z_zfsvfs->z_version < ZPL_VERSION_FUID) ?
	    TX_ACL_V0 : TX_ACL;

	if (txtype == TX_ACL)
		lrsize = sizeof (*lr);
	else
		lrsize = sizeof (*lrv0);

	txsize = lrsize +
	    ((txtype == TX_ACL) ? FUNC0(aclbytes) : aclbytes) +
	    (fuidp ? fuidp->z_domain_str_sz : 0) +
	    sizeof (uint64_t) * (fuidp ? fuidp->z_fuid_cnt : 0);

	itx = FUNC5(txtype, txsize);

	lr = (lr_acl_t *)&itx->itx_lr;
	lr->lr_foid = zp->z_id;
	if (txtype == TX_ACL) {
		lr->lr_acl_bytes = aclbytes;
		lr->lr_domcnt = fuidp ? fuidp->z_domain_cnt : 0;
		lr->lr_fuidcnt = fuidp ? fuidp->z_fuid_cnt : 0;
		if (vsecp->vsa_mask & VSA_ACE_ACLFLAGS)
			lr->lr_acl_flags = (uint64_t)vsecp->vsa_aclflags;
		else
			lr->lr_acl_flags = 0;
	}
	lr->lr_aclcnt = (uint64_t)vsecp->vsa_aclcnt;

	if (txtype == TX_ACL_V0) {
		lrv0 = (lr_acl_v0_t *)lr;
		FUNC1(vsecp->vsa_aclentp, (ace_t *)(lrv0 + 1), aclbytes);
	} else {
		void *start = (ace_t *)(lr + 1);

		FUNC1(vsecp->vsa_aclentp, start, aclbytes);

		start = (caddr_t)start + FUNC0(aclbytes);

		if (fuidp) {
			start = FUNC3(fuidp, start);
			(void) FUNC2(fuidp, start);
		}
	}

	itx->itx_sync = (zp->z_sync_cnt != 0);
	FUNC4(zilog, itx, tx);
}