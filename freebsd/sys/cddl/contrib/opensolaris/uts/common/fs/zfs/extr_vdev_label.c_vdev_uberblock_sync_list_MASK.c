#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_6__ {int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uberblock_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(vdev_t **svd, int svdcount, uberblock_t *ub, int flags)
{
	spa_t *spa = svd[0]->vdev_spa;
	zio_t *zio;
	uint64_t good_writes = 0;

	zio = FUNC3(spa, NULL, NULL, flags);

	for (int v = 0; v < svdcount; v++)
		FUNC0(zio, &good_writes, ub, svd[v], flags);

	(void) FUNC4(zio);

	/*
	 * Flush the uberblocks to disk.  This ensures that the odd labels
	 * are no longer needed (because the new uberblocks and the even
	 * labels are safely on disk), so it is safe to overwrite them.
	 */
	zio = FUNC3(spa, NULL, NULL, flags);

	for (int v = 0; v < svdcount; v++) {
		if (FUNC1(svd[v])) {
			FUNC2(zio, svd[v]);
		}
	}

	(void) FUNC4(zio);

	return (good_writes >= 1 ? 0 : EIO);
}