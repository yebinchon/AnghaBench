#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int io_flags; scalar_t__ io_child_type; scalar_t__ io_stage; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_14__ {int /*<<< orphan*/  spa_suspend_lock; TYPE_1__* spa_suspend_zio_root; int /*<<< orphan*/  spa_suspended; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FM_EREPORT_ZFS_IO_FAILURE ; 
 scalar_t__ ZIO_CHILD_LOGICAL ; 
 scalar_t__ ZIO_FAILURE_MODE_PANIC ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_GODFATHER ; 
 int ZIO_FLAG_SPECULATIVE ; 
 scalar_t__ ZIO_STAGE_DONE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 

void
FUNC10(spa_t *spa, zio_t *zio)
{
	if (FUNC4(spa) == ZIO_FAILURE_MODE_PANIC)
		FUNC1("Pool '%s' has encountered an uncorrectable I/O "
		    "failure and the failure mode property for this pool "
		    "is set to panic.", FUNC5(spa));

	FUNC6(FM_EREPORT_ZFS_IO_FAILURE, spa, NULL, NULL, 0, 0);

	FUNC2(&spa->spa_suspend_lock);

	if (spa->spa_suspend_zio_root == NULL)
		spa->spa_suspend_zio_root = FUNC8(spa, NULL, NULL,
		    ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE |
		    ZIO_FLAG_GODFATHER);

	spa->spa_suspended = B_TRUE;

	if (zio != NULL) {
		FUNC0(!(zio->io_flags & ZIO_FLAG_GODFATHER));
		FUNC0(zio != spa->spa_suspend_zio_root);
		FUNC0(zio->io_child_type == ZIO_CHILD_LOGICAL);
		FUNC0(FUNC9(zio) == NULL);
		FUNC0(zio->io_stage == ZIO_STAGE_DONE);
		FUNC7(spa->spa_suspend_zio_root, zio);
	}

	FUNC3(&spa->spa_suspend_lock);
}