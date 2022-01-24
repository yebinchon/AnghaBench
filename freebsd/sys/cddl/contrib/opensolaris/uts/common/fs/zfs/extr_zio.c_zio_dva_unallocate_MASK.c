#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ io_txg; int /*<<< orphan*/  io_spa; int /*<<< orphan*/ * io_bp_override; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_12__ {TYPE_1__* gn_gbh; struct TYPE_12__** gn_child; } ;
typedef  TYPE_3__ zio_gang_node_t ;
struct TYPE_13__ {scalar_t__ blk_birth; } ;
typedef  TYPE_4__ blkptr_t ;
struct TYPE_10__ {TYPE_4__* zg_blkptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int SPA_GBH_NBLKPTRS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(zio_t *zio, zio_gang_node_t *gn, blkptr_t *bp)
{
	FUNC0(bp->blk_birth == zio->io_txg || FUNC1(bp));
	FUNC0(zio->io_bp_override == NULL);

	if (!FUNC1(bp))
		FUNC2(zio->io_spa, bp, bp->blk_birth, B_TRUE);

	if (gn != NULL) {
		for (int g = 0; g < SPA_GBH_NBLKPTRS; g++) {
			FUNC3(zio, gn->gn_child[g],
			    &gn->gn_gbh->zg_blkptr[g]);
		}
	}
}