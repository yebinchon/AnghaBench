#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  zap_object; int /*<<< orphan*/ * zap_objset; } ;
typedef  TYPE_3__ zap_t ;
struct TYPE_17__ {TYPE_3__* zn_zap; } ;
typedef  TYPE_4__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {int lh_prefix_len; scalar_t__ lh_nfree; } ;
struct TYPE_18__ {TYPE_1__ l_hdr; } ;
struct TYPE_15__ {int zt_shift; scalar_t__ zt_nextblk; } ;
struct TYPE_13__ {TYPE_2__ zap_ptrtbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ ZAP_LEAF_LOW_WATER ; 
 TYPE_11__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*) ; 

__attribute__((used)) static void
FUNC7(zap_name_t *zn, zap_leaf_t *l,
    void *tag, dmu_tx_t *tx)
{
	zap_t *zap = zn->zn_zap;
	int shift = FUNC0(zap)->zap_ptrtbl.zt_shift;
	int leaffull = (FUNC2(l)->l_hdr.lh_prefix_len == shift &&
	    FUNC2(l)->l_hdr.lh_nfree < ZAP_LEAF_LOW_WATER);

	FUNC4(l);

	if (leaffull || FUNC0(zap)->zap_ptrtbl.zt_nextblk) {
		/*
		 * We are in the middle of growing the pointer table, or
		 * this leaf will soon make us grow it.
		 */
		if (FUNC5(zap, tx) == 0) {
			objset_t *os = zap->zap_objset;
			uint64_t zapobj = zap->zap_object;

			FUNC6(zap, tag);
			int err = FUNC3(os, zapobj, tx,
			    RW_WRITER, FALSE, FALSE, tag, &zn->zn_zap);
			zap = zn->zn_zap;
			if (err != 0)
				return;
		}

		/* could have finished growing while our locks were down */
		if (FUNC0(zap)->zap_ptrtbl.zt_shift == shift)
			(void) FUNC1(zap, tx);
	}
}