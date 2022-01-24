#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  int uint64_t ;
struct TYPE_11__ {int dn_maxblkid; int dn_datablksz; int dn_datablkshift; int dn_nlevels; int dn_indblkshift; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_12__ {scalar_t__ tx_txg; int tx_err; TYPE_1__* tx_pool; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_13__ {int /*<<< orphan*/  txh_memory_tohold; TYPE_2__* txh_dnode; TYPE_3__* txh_tx; } ;
typedef  TYPE_4__ dmu_tx_hold_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMU_OBJECT_END ; 
 int ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int SPA_BLKPTRSHIFT ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(dmu_tx_hold_t *txh, uint64_t off, uint64_t len)
{
	dmu_tx_t *tx;
	dnode_t *dn;
	int err;

	tx = txh->txh_tx;
	FUNC0(tx->tx_txg == 0);

	dn = txh->txh_dnode;
	FUNC3(txh);

	if (off >= (dn->dn_maxblkid + 1) * dn->dn_datablksz)
		return;
	if (len == DMU_OBJECT_END)
		len = (dn->dn_maxblkid + 1) * dn->dn_datablksz - off;


	/*
	 * For i/o error checking, we read the first and last level-0
	 * blocks if they are not aligned, and all the level-1 blocks.
	 *
	 * Note:  dbuf_free_range() assumes that we have not instantiated
	 * any level-0 dbufs that will be completely freed.  Therefore we must
	 * exercise care to not read or count the first and last blocks
	 * if they are blocksize-aligned.
	 */
	if (dn->dn_datablkshift == 0) {
		if (off != 0 || len < dn->dn_datablksz)
			FUNC4(txh, 0, dn->dn_datablksz);
	} else {
		/* first block will be modified if it is not aligned */
		if (!FUNC1(off, 1 << dn->dn_datablkshift))
			FUNC4(txh, off, 1);
		/* last block will be modified if it is not aligned */
		if (!FUNC1(off + len, 1 << dn->dn_datablkshift))
			FUNC4(txh, off + len, 1);
	}

	/*
	 * Check level-1 blocks.
	 */
	if (dn->dn_nlevels > 1) {
		int shift = dn->dn_datablkshift + dn->dn_indblkshift -
		    SPA_BLKPTRSHIFT;
		uint64_t start = off >> shift;
		uint64_t end = (off + len) >> shift;

		FUNC0(dn->dn_indblkshift != 0);

		/*
		 * dnode_reallocate() can result in an object with indirect
		 * blocks having an odd data block size.  In this case,
		 * just check the single block.
		 */
		if (dn->dn_datablkshift == 0)
			start = end = 0;

		zio_t *zio = FUNC7(tx->tx_pool->dp_spa,
		    NULL, NULL, ZIO_FLAG_CANFAIL);
		for (uint64_t i = start; i <= end; i++) {
			uint64_t ibyte = i << shift;
			err = FUNC5(dn, 0, &ibyte, 2, 1, 0);
			i = ibyte >> shift;
			if (err == ESRCH || i > end)
				break;
			if (err != 0) {
				tx->tx_err = err;
				(void) FUNC8(zio);
				return;
			}

			(void) FUNC6(&txh->txh_memory_tohold,
			    1 << dn->dn_indblkshift, FTAG);

			err = FUNC2(zio, dn, 1, i);
			if (err != 0) {
				tx->tx_err = err;
				(void) FUNC8(zio);
				return;
			}
		}
		err = FUNC8(zio);
		if (err != 0) {
			tx->tx_err = err;
			return;
		}
	}
}