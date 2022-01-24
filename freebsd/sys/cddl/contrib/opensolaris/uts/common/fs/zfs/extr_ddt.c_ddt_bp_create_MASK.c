#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
struct TYPE_21__ {int /*<<< orphan*/  ddp_phys_birth; } ;
typedef  TYPE_1__ ddt_phys_t ;
struct TYPE_22__ {int /*<<< orphan*/  ddk_cksum; } ;
typedef  TYPE_2__ ddt_key_t ;
struct TYPE_23__ {int blk_fill; int /*<<< orphan*/  blk_cksum; } ;
typedef  TYPE_3__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  DMU_OT_DEDUP ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC13(enum zio_checksum checksum,
    const ddt_key_t *ddk, const ddt_phys_t *ddp, blkptr_t *bp)
{
	FUNC8(bp);

	if (ddp != NULL)
		FUNC12(ddp, bp, ddp->ddp_phys_birth);

	bp->blk_cksum = ddk->ddk_cksum;
	bp->blk_fill = 1;

	FUNC5(bp, FUNC10(ddk));
	FUNC6(bp, FUNC11(ddk));
	FUNC2(bp, FUNC9(ddk));
	FUNC1(bp, checksum);
	FUNC7(bp, DMU_OT_DEDUP);
	FUNC4(bp, 0);
	FUNC3(bp, 0);
	FUNC0(bp, ZFS_HOST_BYTEORDER);
}