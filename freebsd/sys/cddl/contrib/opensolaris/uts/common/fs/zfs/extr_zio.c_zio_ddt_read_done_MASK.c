#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ io_size; scalar_t__ io_child_type; int io_stage; TYPE_2__* io_vsd; scalar_t__* io_child_error; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_spa; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dde_repair_abd; } ;
typedef  TYPE_2__ ddt_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ SPA_LOAD_NONE ; 
 size_t ZIO_CHILD_DDT ; 
 int /*<<< orphan*/  ZIO_CHILD_DDT_BIT ; 
 scalar_t__ ZIO_CHILD_LOGICAL ; 
 int ZIO_STAGE_DDT_READ_START ; 
 int /*<<< orphan*/  ZIO_TASKQ_ISSUE ; 
 int /*<<< orphan*/  ZIO_WAIT_DONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zio_t *
FUNC9(zio_t *zio)
{
	blkptr_t *bp = zio->io_bp;

	if (FUNC8(zio, ZIO_CHILD_DDT_BIT, ZIO_WAIT_DONE)) {
		return (NULL);
	}

	FUNC0(FUNC1(bp));
	FUNC0(FUNC2(bp) == zio->io_size);
	FUNC0(zio->io_child_type == ZIO_CHILD_LOGICAL);

	if (zio->io_child_error[ZIO_CHILD_DDT]) {
		ddt_t *ddt = FUNC5(zio->io_spa, bp);
		ddt_entry_t *dde = zio->io_vsd;
		if (ddt == NULL) {
			FUNC0(FUNC6(zio->io_spa) != SPA_LOAD_NONE);
			return (zio);
		}
		if (dde == NULL) {
			zio->io_stage = ZIO_STAGE_DDT_READ_START >> 1;
			FUNC7(zio, ZIO_TASKQ_ISSUE, B_FALSE);
			return (NULL);
		}
		if (dde->dde_repair_abd != NULL) {
			FUNC3(zio->io_abd, dde->dde_repair_abd,
			    zio->io_size);
			zio->io_child_error[ZIO_CHILD_DDT] = 0;
		}
		FUNC4(ddt, dde);
		zio->io_vsd = NULL;
	}

	FUNC0(zio->io_vsd == NULL);

	return (zio);
}