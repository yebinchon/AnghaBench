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
struct TYPE_15__ {scalar_t__ blk_birth; } ;
struct TYPE_12__ {int io_flags; scalar_t__ io_txg; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_error; TYPE_4__* io_bp; int /*<<< orphan*/  io_spa; TYPE_4__ io_bp_orig; TYPE_3__* io_private; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_13__ {int /*<<< orphan*/  zgd_bp; int /*<<< orphan*/  zgd_lwb; } ;
typedef  TYPE_2__ zgd_t ;
struct TYPE_14__ {TYPE_2__* dsa_zgd; int /*<<< orphan*/  (* dsa_done ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dsa_tx; } ;
typedef  TYPE_3__ dmu_sync_arg_t ;
typedef  TYPE_4__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int ZIO_FLAG_NOPWRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC10(zio_t *zio)
{
	blkptr_t *bp = zio->io_bp;
	dmu_sync_arg_t *dsa = zio->io_private;
	blkptr_t *bp_orig = &zio->io_bp_orig;
	zgd_t *zgd = dsa->dsa_zgd;

	if (zio->io_error == 0) {
		/*
		 * Record the vdev(s) backing this blkptr so they can be
		 * flushed after the writes for the lwb have completed.
		 */
		FUNC8(zgd->zgd_lwb, zgd->zgd_bp);

		if (!FUNC2(bp)) {
			FUNC0(!(zio->io_flags & ZIO_FLAG_NOPWRITE));
			FUNC0(FUNC2(bp_orig) || !FUNC1(bp, bp_orig));
			FUNC0(zio->io_bp->blk_birth == zio->io_txg);
			FUNC0(zio->io_txg > FUNC6(zio->io_spa));
			FUNC9(zio->io_spa, zio->io_txg, zio->io_bp);
		}
	}

	FUNC4(dsa->dsa_tx);

	dsa->dsa_done(dsa->dsa_zgd, zio->io_error);

	FUNC3(zio->io_abd);
	FUNC5(dsa, sizeof (*dsa));
}