#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int zap_num_chunks; } ;
struct TYPE_19__ {scalar_t__* zap_object; int /*<<< orphan*/  zap_objset; TYPE_2__ zap_m; TYPE_1__* zap_dbuf; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_3__ zap_t ;
struct TYPE_20__ {TYPE_3__* zn_zap; } ;
typedef  TYPE_4__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_flags_t ;
struct TYPE_21__ {TYPE_6__* mz_chunk; } ;
typedef  TYPE_5__ mzap_phys_t ;
struct TYPE_22__ {scalar_t__* mze_name; int mze_value; int /*<<< orphan*/  mze_cd; } ;
typedef  TYPE_6__ mzap_ent_phys_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_17__ {int db_size; int /*<<< orphan*/  db_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,int) ; 
 int FUNC5 (TYPE_4__*,int,int,int*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 unsigned long long fzap_default_block_shift ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_4__* FUNC8 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 TYPE_5__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int) ; 

__attribute__((used)) static int
FUNC12(zap_t **zapp, void *tag, dmu_tx_t *tx, zap_flags_t flags)
{
	int err = 0;
	zap_t *zap = *zapp;

	FUNC0(FUNC1(&zap->zap_rwlock));

	int sz = zap->zap_dbuf->db_size;
	mzap_phys_t *mzp = FUNC10(sz);
	FUNC2(zap->zap_dbuf->db_data, mzp, sz);
	int nchunks = zap->zap_m.zap_num_chunks;

	if (!flags) {
		err = FUNC3(zap->zap_objset, zap->zap_object,
		    1ULL << fzap_default_block_shift, 0, tx);
		if (err != 0) {
			FUNC11(mzp, sz);
			return (err);
		}
	}

	FUNC4("upgrading obj=%llu with %u chunks\n",
	    zap->zap_object, nchunks);
	/* XXX destroy the avl later, so we can use the stored hash value */
	FUNC7(zap);

	FUNC6(zap, tx, flags);

	for (int i = 0; i < nchunks; i++) {
		mzap_ent_phys_t *mze = &mzp->mz_chunk[i];
		if (mze->mze_name[0] == 0)
			continue;
		FUNC4("adding %s=%llu\n",
		    mze->mze_name, mze->mze_value);
		zap_name_t *zn = FUNC8(zap, mze->mze_name, 0);
		err = FUNC5(zn, 8, 1, &mze->mze_value, mze->mze_cd,
		    tag, tx);
		zap = zn->zn_zap;	/* fzap_add_cd() may change zap */
		FUNC9(zn);
		if (err != 0)
			break;
	}
	FUNC11(mzp, sz);
	*zapp = zap;
	return (err);
}