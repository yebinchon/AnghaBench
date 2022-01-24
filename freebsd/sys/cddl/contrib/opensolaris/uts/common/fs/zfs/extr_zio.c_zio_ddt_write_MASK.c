#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;
typedef  struct TYPE_39__   TYPE_18__ ;

/* Type definitions */
struct TYPE_41__ {int zp_copies; size_t zp_checksum; int /*<<< orphan*/  zp_dedup; scalar_t__ zp_dedup_verify; } ;
struct TYPE_40__ {scalar_t__ io_txg; int io_flags; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_bookmark; int /*<<< orphan*/  io_priority; int /*<<< orphan*/  io_orig_size; int /*<<< orphan*/  io_orig_abd; int /*<<< orphan*/ * io_bp_override; void* io_pipeline; void* io_stage; TYPE_2__ io_prop; TYPE_5__* io_bp; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  TYPE_2__ zio_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_42__ {scalar_t__ ddp_phys_birth; } ;
typedef  TYPE_3__ ddt_phys_t ;
struct TYPE_43__ {TYPE_1__** dde_lead_zio; TYPE_3__* dde_phys; } ;
typedef  TYPE_4__ ddt_entry_t ;
struct TYPE_44__ {scalar_t__ blk_birth; } ;
typedef  TYPE_5__ blkptr_t ;
struct TYPE_39__ {int ci_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t DDT_PHYS_DITTO ; 
 int SPA_DVAS_PER_BP ; 
 int ZCHECKSUM_FLAG_DEDUP ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int ZIO_FLAG_RAW ; 
 void* ZIO_STAGE_OPEN ; 
 void* ZIO_WRITE_PIPELINE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_5__*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 size_t FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_18__* zio_checksum_table ; 
 int /*<<< orphan*/  zio_ddt_child_write_done ; 
 int /*<<< orphan*/ * zio_ddt_child_write_ready ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  zio_ddt_ditto_write_done ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC23 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zio_t *
FUNC24(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	blkptr_t *bp = zio->io_bp;
	uint64_t txg = zio->io_txg;
	zio_prop_t *zp = &zio->io_prop;
	int p = zp->zp_copies;
	int ditto_copies;
	zio_t *cio = NULL;
	zio_t *dio = NULL;
	ddt_t *ddt = FUNC16(spa, bp);
	ddt_entry_t *dde;
	ddt_phys_t *ddp;

	FUNC0(FUNC3(bp));
	FUNC0(FUNC2(bp) == zp->zp_checksum);
	FUNC0(FUNC4(bp) || zio->io_bp_override);
	FUNC0(!(zio->io_bp_override && (zio->io_flags & ZIO_FLAG_RAW)));

	FUNC11(ddt);
	dde = FUNC13(ddt, bp, B_TRUE);
	ddp = &dde->dde_phys[p];

	if (zp->zp_dedup_verify && FUNC19(zio, ddt, dde)) {
		/*
		 * If we're using a weak checksum, upgrade to a strong checksum
		 * and try again.  If we're already using a strong checksum,
		 * we can't resolve it, so just convert to an ordinary write.
		 * (And automatically e-mail a paper to Nature?)
		 */
		if (!(zio_checksum_table[zp->zp_checksum].ci_flags &
		    ZCHECKSUM_FLAG_DEDUP)) {
			zp->zp_checksum = FUNC17(spa);
			FUNC21(zio);
			zio->io_stage = ZIO_STAGE_OPEN;
			FUNC6(bp);
		} else {
			zp->zp_dedup = B_FALSE;
			FUNC5(bp, B_FALSE);
		}
		FUNC0(!FUNC3(bp));
		zio->io_pipeline = ZIO_WRITE_PIPELINE;
		FUNC12(ddt);
		return (zio);
	}

	ditto_copies = FUNC9(ddt, dde, ddp);
	FUNC0(ditto_copies < SPA_DVAS_PER_BP);

	if (ditto_copies > FUNC10(dde) &&
	    dde->dde_lead_zio[DDT_PHYS_DITTO] == NULL) {
		zio_prop_t czp = *zp;

		czp.zp_copies = ditto_copies;

		/*
		 * If we arrived here with an override bp, we won't have run
		 * the transform stack, so we won't have the data we need to
		 * generate a child i/o.  So, toss the override bp and restart.
		 * This is safe, because using the override bp is just an
		 * optimization; and it's rare, so the cost doesn't matter.
		 */
		if (zio->io_bp_override) {
			FUNC21(zio);
			zio->io_stage = ZIO_STAGE_OPEN;
			zio->io_pipeline = ZIO_WRITE_PIPELINE;
			zio->io_bp_override = NULL;
			FUNC6(bp);
			FUNC12(ddt);
			return (zio);
		}

		dio = FUNC23(zio, spa, txg, bp, zio->io_orig_abd,
		    zio->io_orig_size, zio->io_orig_size, &czp, NULL, NULL,
		    NULL, zio_ddt_ditto_write_done, dde, zio->io_priority,
		    FUNC7(zio), &zio->io_bookmark);

		FUNC22(dio, zio->io_abd, zio->io_size, 0, NULL);
		dde->dde_lead_zio[DDT_PHYS_DITTO] = dio;
	}

	if (ddp->ddp_phys_birth != 0 || dde->dde_lead_zio[p] != NULL) {
		if (ddp->ddp_phys_birth != 0)
			FUNC8(ddp, bp, txg);
		if (dde->dde_lead_zio[p] != NULL)
			FUNC18(zio, dde->dde_lead_zio[p]);
		else
			FUNC14(ddp);
	} else if (zio->io_bp_override) {
		FUNC0(bp->blk_birth == txg);
		FUNC0(FUNC1(bp, zio->io_bp_override));
		FUNC15(ddp, bp);
		FUNC14(ddp);
	} else {
		cio = FUNC23(zio, spa, txg, bp, zio->io_orig_abd,
		    zio->io_orig_size, zio->io_orig_size, zp,
		    zio_ddt_child_write_ready, NULL, NULL,
		    zio_ddt_child_write_done, dde, zio->io_priority,
		    FUNC7(zio), &zio->io_bookmark);

		FUNC22(cio, zio->io_abd, zio->io_size, 0, NULL);
		dde->dde_lead_zio[p] = cio;
	}

	FUNC12(ddt);

	if (cio)
		FUNC20(cio);
	if (dio)
		FUNC20(dio);

	return (zio);
}