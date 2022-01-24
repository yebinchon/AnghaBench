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
struct TYPE_12__ {int vdev_children; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_13__ {scalar_t__ spa_scrub_inflight; int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_14__ {int /*<<< orphan*/  spic_spc; int /*<<< orphan*/  spic_zb; int /*<<< orphan*/  spic_bp; } ;
typedef  TYPE_4__ scan_prefetch_issue_ctx_t ;
struct TYPE_15__ {scalar_t__ scn_maxinflight_bytes; int /*<<< orphan*/  scn_prefetch_queue; scalar_t__ scn_prefetch_stop; TYPE_1__* scn_dp; int /*<<< orphan*/  scn_zio_root; } ;
typedef  TYPE_5__ dsl_scan_t ;
typedef  int arc_flags_t ;
struct TYPE_11__ {TYPE_3__* dp_spa; } ;

/* Variables and functions */
 int ARC_FLAG_NOWAIT ; 
 int ARC_FLAG_PREFETCH ; 
 int ARC_FLAG_PRESCIENT_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_SCAN_THREAD ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SCRUB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsl_scan_prefetch_cb ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int zfs_top_maxinflight ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	dsl_scan_t *scn = arg;
	spa_t *spa = scn->scn_dp->dp_spa;
	vdev_t *rvd = spa->spa_root_vdev;
	uint64_t maxinflight = rvd->vdev_children * zfs_top_maxinflight;
	scan_prefetch_issue_ctx_t *spic;

	/* loop until we are told to stop */
	while (!scn->scn_prefetch_stop) {
		arc_flags_t flags = ARC_FLAG_NOWAIT |
                    ARC_FLAG_PRESCIENT_PREFETCH | ARC_FLAG_PREFETCH;
		int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SCAN_THREAD;
		
		FUNC9(&spa->spa_scrub_lock);

		/*
		 * Wait until we have an IO to issue and are not above our
		 * maximum in flight limit.
		 */
		while (!scn->scn_prefetch_stop &&
		    (FUNC5(&scn->scn_prefetch_queue) == 0 ||
		    spa->spa_scrub_inflight >= scn->scn_maxinflight_bytes)) {
			FUNC7(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
		}

		/* recheck if we should stop since we waited for the cv */
		if (scn->scn_prefetch_stop) {
			FUNC10(&spa->spa_scrub_lock);
			break;
		}

		/* remove the prefetch IO from the tree */
		spic = FUNC4(&scn->scn_prefetch_queue);
		spa->spa_scrub_inflight += FUNC2(&spic->spic_bp);
		FUNC6(&scn->scn_prefetch_queue, spic);

		FUNC10(&spa->spa_scrub_lock);

		/* issue the prefetch asynchronously */
		(void) FUNC3(scn->scn_zio_root, scn->scn_dp->dp_spa,
		    &spic->spic_bp, dsl_scan_prefetch_cb, spic->spic_spc,
		    ZIO_PRIORITY_SCRUB, zio_flags, &flags, &spic->spic_zb);

		FUNC8(spic, sizeof (scan_prefetch_issue_ctx_t));
	}

	FUNC0(scn->scn_prefetch_stop);

	/* free any prefetches we didn't get to complete */
	FUNC9(&spa->spa_scrub_lock);
	while ((spic = FUNC4(&scn->scn_prefetch_queue)) != NULL) {
		FUNC6(&scn->scn_prefetch_queue, spic);
		FUNC11(spic->spic_spc, scn);
		FUNC8(spic, sizeof (scan_prefetch_issue_ctx_t));
	}
	FUNC1(FUNC5(&scn->scn_prefetch_queue));
	FUNC10(&spa->spa_scrub_lock);
}