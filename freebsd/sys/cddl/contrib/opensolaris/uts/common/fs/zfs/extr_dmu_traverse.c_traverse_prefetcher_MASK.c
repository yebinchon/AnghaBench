#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_3__ {scalar_t__ pd_bytes_fetched; int /*<<< orphan*/  pd_mtx; int /*<<< orphan*/  pd_cv; scalar_t__ pd_cancel; } ;
typedef  TYPE_1__ prefetch_data_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int arc_flags_t ;

/* Variables and functions */
 int ARC_FLAG_NOWAIT ; 
 int ARC_FLAG_PREFETCH ; 
 int ARC_FLAG_PRESCIENT_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EINTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ zfs_pd_bytes_max ; 

__attribute__((used)) static int
FUNC9(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	prefetch_data_t *pfd = arg;
	arc_flags_t aflags = ARC_FLAG_NOWAIT | ARC_FLAG_PREFETCH |
	    ARC_FLAG_PRESCIENT_PREFETCH;
	
	FUNC0(pfd->pd_bytes_fetched >= 0);
	if (bp == NULL)
		return (0);
	if (pfd->pd_cancel)
		return (FUNC2(EINTR));

	if (!FUNC8(pfd, bp))
		return (0);

	FUNC6(&pfd->pd_mtx);
	while (!pfd->pd_cancel && pfd->pd_bytes_fetched >= zfs_pd_bytes_max)
		FUNC5(&pfd->pd_cv, &pfd->pd_mtx);
	pfd->pd_bytes_fetched += FUNC1(bp);
	FUNC4(&pfd->pd_cv);
	FUNC7(&pfd->pd_mtx);

	(void) FUNC3(NULL, spa, bp, NULL, NULL, ZIO_PRIORITY_ASYNC_READ,
	    ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE, &aflags, zb);

	return (0);
}