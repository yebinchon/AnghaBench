#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_alloc_list_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int spa_alloc_count; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OT_INTENT_LOG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METASLAB_HINTBP_AVOID ; 
 scalar_t__ SPA_VERSION_SLIM_ZIL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_ZILOG ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_ZILOG2 ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 

int
FUNC19(spa_t *spa, uint64_t objset, uint64_t txg, blkptr_t *new_bp,
    blkptr_t *old_bp, uint64_t size, boolean_t *slog)
{
	int error = 1;
	zio_alloc_list_t io_alloc_list;

	FUNC0(txg > FUNC16(spa));

	FUNC12(&io_alloc_list);
	/*
	 * When allocating a zil block, we don't have information about
	 * the final destination of the block except the objset it's part
	 * of, so we just hash the objset ID to pick the allocator to get
	 * some parallelism.
	 */
	error = FUNC10(spa, FUNC13(spa), size, new_bp, 1,
	    txg, old_bp, METASLAB_HINTBP_AVOID, &io_alloc_list, NULL,
	    FUNC9(0, 0, 0, objset) % spa->spa_alloc_count);
	if (error == 0) {
		*slog = TRUE;
	} else {
		error = FUNC10(spa, FUNC15(spa), size,
		    new_bp, 1, txg, old_bp, METASLAB_HINTBP_AVOID,
		    &io_alloc_list, NULL, FUNC9(0, 0, 0, objset) %
		    spa->spa_alloc_count);
		if (error == 0)
			*slog = FALSE;
	}
	FUNC11(&io_alloc_list);

	if (error == 0) {
		FUNC6(new_bp, size);
		FUNC7(new_bp, size);
		FUNC3(new_bp, ZIO_COMPRESS_OFF);
		FUNC2(new_bp,
		    FUNC17(spa) >= SPA_VERSION_SLIM_ZIL
		    ? ZIO_CHECKSUM_ZILOG2 : ZIO_CHECKSUM_ZILOG);
		FUNC8(new_bp, DMU_OT_INTENT_LOG);
		FUNC5(new_bp, 0);
		FUNC4(new_bp, 0);
		FUNC1(new_bp, ZFS_HOST_BYTEORDER);
	} else {
		FUNC18("%s: zil block allocation failure: "
		    "size %llu, error %d", FUNC14(spa), size, error);
	}

	return (error);
}