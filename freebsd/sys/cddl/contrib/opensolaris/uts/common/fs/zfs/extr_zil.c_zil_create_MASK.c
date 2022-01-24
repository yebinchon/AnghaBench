#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zl_dmu_pool; TYPE_7__* zl_os; int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_destroy_txg; TYPE_3__* zl_header; } ;
typedef  TYPE_2__ zilog_t ;
struct TYPE_11__ {scalar_t__ zh_claim_txg; scalar_t__ zh_replay_seq; int /*<<< orphan*/  zh_log; } ;
typedef  TYPE_3__ zil_header_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lwb_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blk ;
struct TYPE_12__ {TYPE_1__* os_dsl_dataset; } ;
struct TYPE_9__ {int /*<<< orphan*/  ds_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIL_MIN_BLKSZ ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lwb_t *
FUNC17(zilog_t *zilog)
{
	const zil_header_t *zh = zilog->zl_header;
	lwb_t *lwb = NULL;
	uint64_t txg = 0;
	dmu_tx_t *tx = NULL;
	blkptr_t blk;
	int error = 0;
	boolean_t slog = FALSE;

	/*
	 * Wait for any previous destroy to complete.
	 */
	FUNC12(zilog->zl_dmu_pool, zilog->zl_destroy_txg);

	FUNC0(zh->zh_claim_txg == 0);
	FUNC0(zh->zh_replay_seq == 0);

	blk = zh->zh_log;

	/*
	 * Allocate an initial log block if:
	 *    - there isn't one already
	 *    - the existing block is the wrong endianess
	 */
	if (FUNC1(&blk) || FUNC2(&blk)) {
		tx = FUNC9(zilog->zl_os);
		FUNC4(FUNC7(tx, TXG_WAIT));
		FUNC11(FUNC6(zilog->zl_os), tx);
		txg = FUNC10(tx);

		if (!FUNC1(&blk)) {
			FUNC16(zilog->zl_spa, txg, &blk);
			FUNC3(&blk);
		}

		error = FUNC15(zilog->zl_spa,
		    zilog->zl_os->os_dsl_dataset->ds_object, txg, &blk, NULL,
		    ZIL_MIN_BLKSZ, &slog);

		if (error == 0)
			FUNC14(zilog, &blk);
	}

	/*
	 * Allocate a log write block (lwb) for the first log block.
	 */
	if (error == 0)
		lwb = FUNC13(zilog, &blk, slog, txg);

	/*
	 * If we just allocated the first log block, commit our transaction
	 * and wait for zil_sync() to stuff the block poiner into zh_log.
	 * (zh is part of the MOS, so we cannot modify it in open context.)
	 */
	if (tx != NULL) {
		FUNC8(tx);
		FUNC12(zilog->zl_dmu_pool, txg);
	}

	FUNC0(FUNC5(&blk, &zh->zh_log, sizeof (blk)) == 0);

	return (lwb);
}