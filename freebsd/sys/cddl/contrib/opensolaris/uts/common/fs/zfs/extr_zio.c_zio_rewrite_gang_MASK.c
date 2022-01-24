#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  io_bookmark; int /*<<< orphan*/  io_priority; int /*<<< orphan*/  io_txg; int /*<<< orphan*/  io_spa; int /*<<< orphan*/  io_pipeline; TYPE_1__* io_gang_leader; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_13__ {int /*<<< orphan*/  gn_gbh; } ;
typedef  TYPE_3__ zio_gang_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_11__ {int io_flags; TYPE_3__* io_gang_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 int ZIO_FLAG_INDUCE_DAMAGE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZIO_VDEV_IO_STAGES ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zio_gang_issue_func_done ; 
 TYPE_2__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zio_t *
FUNC8(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
	zio_t *zio;

	if (gn != NULL) {
		abd_t *gbh_abd =
		    FUNC3(gn->gn_gbh, SPA_GANGBLOCKSIZE);
		zio = FUNC7(pio, pio->io_spa, pio->io_txg, bp,
		    gbh_abd, SPA_GANGBLOCKSIZE, zio_gang_issue_func_done, NULL,
		    pio->io_priority, FUNC2(pio),
		    &pio->io_bookmark);
		/*
		 * As we rewrite each gang header, the pipeline will compute
		 * a new gang block header checksum for it; but no one will
		 * compute a new data checksum, so we do that here.  The one
		 * exception is the gang leader: the pipeline already computed
		 * its data checksum because that stage precedes gang assembly.
		 * (Presently, nothing actually uses interior data checksums;
		 * this is just good hygiene.)
		 */
		if (gn != pio->io_gang_leader->io_gang_tree) {
			abd_t *buf = FUNC4(data, offset);

			FUNC6(zio, FUNC0(bp),
			    buf, FUNC1(bp));

			FUNC5(buf);
		}
		/*
		 * If we are here to damage data for testing purposes,
		 * leave the GBH alone so that we can detect the damage.
		 */
		if (pio->io_gang_leader->io_flags & ZIO_FLAG_INDUCE_DAMAGE)
			zio->io_pipeline &= ~ZIO_VDEV_IO_STAGES;
	} else {
		zio = FUNC7(pio, pio->io_spa, pio->io_txg, bp,
		    FUNC4(data, offset), FUNC1(bp),
		    zio_gang_issue_func_done, NULL, pio->io_priority,
		    FUNC2(pio), &pio->io_bookmark);
	}

	return (zio);
}