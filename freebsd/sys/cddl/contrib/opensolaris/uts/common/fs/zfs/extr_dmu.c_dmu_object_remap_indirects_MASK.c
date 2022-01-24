#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_8__ {int dn_nlevels; unsigned long long dn_indblkshift; unsigned long long dn_datablkshift; int /*<<< orphan*/  dn_object; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FORREAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  JUSTLOOKING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long SPA_BLKPTRSHIFT ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long long*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(objset_t *os, uint64_t object,
    uint64_t last_removal_txg)
{
	uint64_t offset, l1span;
	int err;
	dnode_t *dn;

	err = FUNC7(os, object, FTAG, &dn);
	if (err != 0) {
		return (err);
	}

	if (dn->dn_nlevels <= 1) {
		if (FUNC12(JUSTLOOKING) && FUNC12(FORREAL)) {
			err = FUNC0(EINTR);
		}

		/*
		 * If the dnode has no indirect blocks, we cannot dirty them.
		 * We still want to remap the blkptr(s) in the dnode if
		 * appropriate, so mark it as dirty.
		 */
		if (err == 0 && FUNC8(dn)) {
			dmu_tx_t *tx = FUNC5(os);
			FUNC6(tx, dn->dn_object);
			if ((err = FUNC3(tx, TXG_WAIT)) == 0) {
				FUNC11(dn, tx);
				FUNC4(tx);
			} else {
				FUNC2(tx);
			}
		}

		FUNC10(dn, FTAG);
		return (err);
	}

	offset = 0;
	l1span = 1ULL << (dn->dn_indblkshift - SPA_BLKPTRSHIFT +
	    dn->dn_datablkshift);
	/*
	 * Find the next L1 indirect that is not a hole.
	 */
	while (FUNC9(dn, 0, &offset, 2, 1, 0) == 0) {
		if (FUNC12(JUSTLOOKING) && FUNC12(FORREAL)) {
			err = FUNC0(EINTR);
			break;
		}
		if ((err = FUNC1(os, dn,
		    last_removal_txg, offset)) != 0) {
			break;
		}
		offset += l1span;
	}

	FUNC10(dn, FTAG);
	return (err);
}