#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ zp_copies; } ;
struct TYPE_15__ {scalar_t__ io_error; int /*<<< orphan*/  io_txg; TYPE_5__* io_private; int /*<<< orphan*/  io_spa; TYPE_6__* io_bp; TYPE_2__ io_prop; } ;
typedef  TYPE_1__ zio_t ;
typedef  TYPE_2__ zio_prop_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_17__ {scalar_t__ ddp_refcnt; scalar_t__ ddp_phys_birth; } ;
typedef  TYPE_3__ ddt_phys_t ;
struct TYPE_18__ {int /*<<< orphan*/  ddk_cksum; } ;
typedef  TYPE_4__ ddt_key_t ;
struct TYPE_19__ {TYPE_1__** dde_lead_zio; TYPE_4__ dde_key; TYPE_3__* dde_phys; } ;
typedef  TYPE_5__ ddt_entry_t ;
struct TYPE_20__ {int /*<<< orphan*/  blk_cksum; } ;
typedef  TYPE_6__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 int DDT_PHYS_DITTO ; 
 scalar_t__ SPA_DVAS_PER_BP ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static void
FUNC9(zio_t *zio)
{
	int p = DDT_PHYS_DITTO;
	zio_prop_t *zp = &zio->io_prop;
	blkptr_t *bp = zio->io_bp;
	ddt_t *ddt = FUNC8(zio->io_spa, bp);
	ddt_entry_t *dde = zio->io_private;
	ddt_phys_t *ddp = &dde->dde_phys[p];
	ddt_key_t *ddk = &dde->dde_key;

	FUNC4(ddt);

	FUNC0(ddp->ddp_refcnt == 0);
	FUNC0(dde->dde_lead_zio[p] == zio);
	dde->dde_lead_zio[p] = NULL;

	if (zio->io_error == 0) {
		FUNC0(FUNC3(bp->blk_cksum, ddk->ddk_cksum));
		FUNC0(zp->zp_copies < SPA_DVAS_PER_BP);
		FUNC0(zp->zp_copies == FUNC1(bp) - FUNC2(bp));
		if (ddp->ddp_phys_birth != 0)
			FUNC7(ddt, ddk, ddp, zio->io_txg);
		FUNC6(ddp, bp);
	}

	FUNC5(ddt);
}