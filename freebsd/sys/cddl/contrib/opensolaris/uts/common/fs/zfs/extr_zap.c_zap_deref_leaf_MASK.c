#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* zap_dbuf; } ;
typedef  TYPE_4__ zap_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  krw_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {int /*<<< orphan*/  zt_shift; } ;
struct TYPE_16__ {scalar_t__ zap_block_type; scalar_t__ zap_magic; TYPE_2__ zap_ptrtbl; } ;
struct TYPE_13__ {scalar_t__ lh_prefix; int /*<<< orphan*/  lh_prefix_len; } ;
struct TYPE_15__ {TYPE_3__ l_hdr; } ;
struct TYPE_11__ {TYPE_8__* db_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZAP_MAGIC ; 
 scalar_t__ ZBT_HEADER ; 
 scalar_t__ ZBT_LEAF ; 
 TYPE_8__* FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_4__*,scalar_t__,scalar_t__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(zap_t *zap, uint64_t h, dmu_tx_t *tx, krw_t lt, zap_leaf_t **lp)
{
	uint64_t blk;

	FUNC0(zap->zap_dbuf == NULL ||
	    FUNC3(zap) == zap->zap_dbuf->db_data);

	/* Reality check for corrupt zap objects (leaf or header). */
	if ((FUNC3(zap)->zap_block_type != ZBT_LEAF &&
	    FUNC3(zap)->zap_block_type != ZBT_HEADER) ||
	    FUNC3(zap)->zap_magic != ZAP_MAGIC) {
		return (FUNC1(EIO));
	}

	uint64_t idx = FUNC2(h, FUNC3(zap)->zap_ptrtbl.zt_shift);
	int err = FUNC5(zap, idx, &blk);
	if (err != 0)
		return (err);
	err = FUNC4(zap, blk, tx, lt, lp);

	FUNC0(err ||
	    FUNC2(h, FUNC6(*lp)->l_hdr.lh_prefix_len) ==
	    FUNC6(*lp)->l_hdr.lh_prefix);
	return (err);
}