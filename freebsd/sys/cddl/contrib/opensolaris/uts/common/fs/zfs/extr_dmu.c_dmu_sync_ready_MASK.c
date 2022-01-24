#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ io_error; TYPE_5__* io_bp; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_13__ {TYPE_1__* dsa_zgd; } ;
typedef  TYPE_3__ dmu_sync_arg_t ;
struct TYPE_14__ {int /*<<< orphan*/  db_size; } ;
typedef  TYPE_4__ dmu_buf_t ;
struct TYPE_15__ {int blk_fill; } ;
typedef  TYPE_5__ blkptr_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;
struct TYPE_11__ {TYPE_4__* zgd_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(zio_t *zio, arc_buf_t *buf, void *varg)
{
	dmu_sync_arg_t *dsa = varg;
	dmu_buf_t *db = dsa->dsa_zgd->zgd_db;
	blkptr_t *bp = zio->io_bp;

	if (zio->io_error == 0) {
		if (FUNC3(bp)) {
			/*
			 * A block of zeros may compress to a hole, but the
			 * block size still needs to be known for replay.
			 */
			FUNC4(bp, db->db_size);
		} else if (!FUNC2(bp)) {
			FUNC0(FUNC1(bp) == 0);
			bp->blk_fill = 1;
		}
	}
}