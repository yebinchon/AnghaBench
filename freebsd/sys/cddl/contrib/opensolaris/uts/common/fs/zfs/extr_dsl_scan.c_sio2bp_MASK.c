#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  sio_cksum; int /*<<< orphan*/  sio_birth; int /*<<< orphan*/  sio_phys_birth; int /*<<< orphan*/  sio_blk_prop; int /*<<< orphan*/  sio_offset; int /*<<< orphan*/  sio_asize; } ;
typedef  TYPE_1__ scan_io_t ;
struct TYPE_7__ {int blk_fill; int /*<<< orphan*/  blk_cksum; int /*<<< orphan*/  blk_birth; int /*<<< orphan*/  blk_phys_birth; int /*<<< orphan*/  blk_prop; int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static inline void
FUNC4(const scan_io_t *sio, blkptr_t *bp, uint64_t vdev_id)
{
	FUNC3(bp, sizeof (*bp));
	FUNC0(&bp->blk_dva[0], sio->sio_asize);
	FUNC2(&bp->blk_dva[0], vdev_id);
	FUNC1(&bp->blk_dva[0], sio->sio_offset);
	bp->blk_prop = sio->sio_blk_prop;
	bp->blk_phys_birth = sio->sio_phys_birth;
	bp->blk_birth = sio->sio_birth;
	bp->blk_fill = 1;	/* we always only work with data pointers */
	bp->blk_cksum = sio->sio_cksum;
}