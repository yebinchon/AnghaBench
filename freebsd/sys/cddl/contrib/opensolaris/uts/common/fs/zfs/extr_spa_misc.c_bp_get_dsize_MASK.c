#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_4__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_1__ blkptr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC4(spa_t *spa, const blkptr_t *bp)
{
	uint64_t dsize = 0;

	FUNC2(spa, SCL_VDEV, FTAG, RW_READER);

	for (int d = 0; d < FUNC0(bp); d++)
		dsize += FUNC1(spa, &bp->blk_dva[d]);

	FUNC3(spa, SCL_VDEV, FTAG);

	return (dsize);
}