#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {size_t vdev_asize; int /*<<< orphan*/ * vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_20__ {TYPE_1__* spa_root_vdev; int /*<<< orphan*/  spa_trust_config; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_21__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_4__ blkptr_t ;
struct TYPE_18__ {size_t vdev_children; TYPE_2__** vdev_child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__ const*) ; 
 scalar_t__ FUNC1 (TYPE_4__ const*) ; 
 scalar_t__ FUNC2 (TYPE_4__ const*) ; 
 scalar_t__ FUNC3 (TYPE_4__ const*) ; 
 int FUNC4 (TYPE_4__ const*) ; 
 scalar_t__ FUNC5 (TYPE_4__ const*) ; 
 scalar_t__ FUNC6 (TYPE_4__ const*) ; 
 scalar_t__ FUNC7 (TYPE_4__ const*) ; 
 scalar_t__ FUNC8 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUM_BP_EMBEDDED_TYPES ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 scalar_t__ SPA_MAXBLOCKSIZE ; 
 scalar_t__ ZIO_CHECKSUM_FUNCTIONS ; 
 scalar_t__ ZIO_CHECKSUM_ON ; 
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ; 
 scalar_t__ ZIO_COMPRESS_ON ; 
 int /*<<< orphan*/  vdev_hole_ops ; 
 int /*<<< orphan*/  vdev_missing_ops ; 
 size_t FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,TYPE_4__ const*,int,...) ; 

void
FUNC15(spa_t *spa, const blkptr_t *bp)
{
	if (!FUNC9(FUNC6(bp))) {
		FUNC14("blkptr at %p has invalid TYPE %llu",
		    bp, (longlong_t)FUNC6(bp));
	}
	if (FUNC1(bp) >= ZIO_CHECKSUM_FUNCTIONS ||
	    FUNC1(bp) <= ZIO_CHECKSUM_ON) {
		FUNC14("blkptr at %p has invalid CHECKSUM %llu",
		    bp, (longlong_t)FUNC1(bp));
	}
	if (FUNC2(bp) >= ZIO_COMPRESS_FUNCTIONS ||
	    FUNC2(bp) <= ZIO_COMPRESS_ON) {
		FUNC14("blkptr at %p has invalid COMPRESS %llu",
		    bp, (longlong_t)FUNC2(bp));
	}
	if (FUNC3(bp) > SPA_MAXBLOCKSIZE) {
		FUNC14("blkptr at %p has invalid LSIZE %llu",
		    bp, (longlong_t)FUNC3(bp));
	}
	if (FUNC5(bp) > SPA_MAXBLOCKSIZE) {
		FUNC14("blkptr at %p has invalid PSIZE %llu",
		    bp, (longlong_t)FUNC5(bp));
	}

	if (FUNC7(bp)) {
		if (FUNC0(bp) > NUM_BP_EMBEDDED_TYPES) {
			FUNC14("blkptr at %p has invalid ETYPE %llu",
			    bp, (longlong_t)FUNC0(bp));
		}
	}

	/*
	 * Do not verify individual DVAs if the config is not trusted. This
	 * will be done once the zio is executed in vdev_mirror_map_alloc.
	 */
	if (!spa->spa_trust_config)
		return;

	/*
	 * Pool-specific checks.
	 *
	 * Note: it would be nice to verify that the blk_birth and
	 * BP_PHYSICAL_BIRTH() are not too large.  However, spa_freeze()
	 * allows the birth time of log blocks (and dmu_sync()-ed blocks
	 * that are in the log) to be arbitrarily large.
	 */
	for (int i = 0; i < FUNC4(bp); i++) {
		uint64_t vdevid = FUNC12(&bp->blk_dva[i]);
		if (vdevid >= spa->spa_root_vdev->vdev_children) {
			FUNC14("blkptr at %p DVA %u has invalid "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		vdev_t *vd = spa->spa_root_vdev->vdev_child[vdevid];
		if (vd == NULL) {
			FUNC14("blkptr at %p DVA %u has invalid "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		if (vd->vdev_ops == &vdev_hole_ops) {
			FUNC14("blkptr at %p DVA %u has hole "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		if (vd->vdev_ops == &vdev_missing_ops) {
			/*
			 * "missing" vdevs are valid during import, but we
			 * don't have their detailed info (e.g. asize), so
			 * we can't perform any more checks on them.
			 */
			continue;
		}
		uint64_t offset = FUNC11(&bp->blk_dva[i]);
		uint64_t asize = FUNC10(&bp->blk_dva[i]);
		if (FUNC8(bp))
			asize = FUNC13(vd, SPA_GANGBLOCKSIZE);
		if (offset + asize > vd->vdev_asize) {
			FUNC14("blkptr at %p DVA %u has invalid "
			    "OFFSET %llu",
			    bp, i, (longlong_t)offset);
		}
	}
}