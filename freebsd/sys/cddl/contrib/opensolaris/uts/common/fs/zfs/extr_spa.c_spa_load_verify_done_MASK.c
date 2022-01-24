#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int io_error; int /*<<< orphan*/  io_abd; TYPE_2__* io_spa; TYPE_3__* io_private; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_6__ {int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; int /*<<< orphan*/  spa_load_verify_ios; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  sle_data_count; int /*<<< orphan*/  sle_meta_count; } ;
typedef  TYPE_3__ spa_load_error_t ;
typedef  scalar_t__ dmu_object_type_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ DMU_OT_INTENT_LOG ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(zio_t *zio)
{
	blkptr_t *bp = zio->io_bp;
	spa_load_error_t *sle = zio->io_private;
	dmu_object_type_t type = FUNC1(bp);
	int error = zio->io_error;
	spa_t *spa = zio->io_spa;

	FUNC3(zio->io_abd);
	if (error) {
		if ((FUNC0(bp) != 0 || FUNC2(type)) &&
		    type != DMU_OT_INTENT_LOG)
			FUNC4(&sle->sle_meta_count);
		else
			FUNC4(&sle->sle_data_count);
	}

	FUNC6(&spa->spa_scrub_lock);
	spa->spa_load_verify_ios--;
	FUNC5(&spa->spa_scrub_io_cv);
	FUNC7(&spa->spa_scrub_lock);
}