#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  enum zio_stage { ____Placeholder_zio_stage } zio_stage ;
typedef  enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int ZIO_FLAG_DONT_QUEUE ; 
 int ZIO_FREE_PIPELINE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_NOW ; 
 int ZIO_STAGE_ISSUE_ASYNC ; 
 int /*<<< orphan*/  ZIO_STAGE_OPEN ; 
 int ZIO_STAGE_VDEV_IO_ASSESS ; 
 int ZIO_STAGE_VDEV_IO_START ; 
 int /*<<< orphan*/  ZIO_TYPE_FREE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_sync_pass_deferred_free ; 
 scalar_t__ zfs_trim_enabled ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

zio_t *
FUNC12(zio_t *pio, spa_t *spa, uint64_t txg, const blkptr_t *bp,
    uint64_t size, enum zio_flag flags)
{
	zio_t *zio;
	enum zio_stage stage = ZIO_FREE_PIPELINE;

	FUNC0(!FUNC4(bp));
	FUNC0(FUNC9(spa) == txg);
	FUNC0(FUNC8(spa) < zfs_sync_pass_deferred_free);

	if (FUNC2(bp))
		return (FUNC11(pio, spa, NULL, NULL, NULL, 0));

	FUNC7(spa, bp);
	FUNC5(spa, bp);
	FUNC6(spa, bp);

	if (zfs_trim_enabled)
		stage |= ZIO_STAGE_ISSUE_ASYNC | ZIO_STAGE_VDEV_IO_START |
		    ZIO_STAGE_VDEV_IO_ASSESS;
	/*
	 * GANG and DEDUP blocks can induce a read (for the gang block header,
	 * or the DDT), so issue them asynchronously so that this thread is
	 * not tied up.
	 */
	else if (FUNC3(bp) || FUNC1(bp))
		stage |= ZIO_STAGE_ISSUE_ASYNC;

	flags |= ZIO_FLAG_DONT_QUEUE;

	zio = FUNC10(pio, spa, txg, bp, NULL, size,
	    size, NULL, NULL, ZIO_TYPE_FREE, ZIO_PRIORITY_NOW,
	    flags, NULL, 0, NULL, ZIO_STAGE_OPEN, stage);

	return (zio);
}