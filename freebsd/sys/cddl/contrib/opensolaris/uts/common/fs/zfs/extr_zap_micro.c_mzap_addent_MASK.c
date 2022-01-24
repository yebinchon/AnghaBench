#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int zap_alloc_next; int zap_num_chunks; int /*<<< orphan*/  zap_num_entries; } ;
struct TYPE_12__ {TYPE_1__ zap_m; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;
struct TYPE_13__ {int /*<<< orphan*/  zn_hash; int /*<<< orphan*/  zn_key_orig; TYPE_2__* zn_zap; } ;
typedef  TYPE_3__ zap_name_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_14__ {scalar_t__* mze_name; scalar_t__ mze_cd; int /*<<< orphan*/  mze_value; } ;
typedef  TYPE_4__ mzap_ent_phys_t ;
struct TYPE_15__ {TYPE_4__* mz_chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(zap_name_t *zn, uint64_t value)
{
	zap_t *zap = zn->zn_zap;
	int start = zap->zap_m.zap_alloc_next;

	FUNC0(FUNC1(&zap->zap_rwlock));

#ifdef ZFS_DEBUG
	for (int i = 0; i < zap->zap_m.zap_num_chunks; i++) {
		mzap_ent_phys_t *mze = &zap_m_phys(zap)->mz_chunk[i];
		ASSERT(strcmp(zn->zn_key_orig, mze->mze_name) != 0);
	}
#endif

	uint32_t cd = FUNC3(zap, zn->zn_hash);
	/* given the limited size of the microzap, this can't happen */
	FUNC0(cd < FUNC8(zap));

again:
	for (int i = start; i < zap->zap_m.zap_num_chunks; i++) {
		mzap_ent_phys_t *mze = &FUNC7(zap)->mz_chunk[i];
		if (mze->mze_name[0] == 0) {
			mze->mze_value = value;
			mze->mze_cd = cd;
			(void) FUNC6(mze->mze_name, zn->zn_key_orig);
			zap->zap_m.zap_num_entries++;
			zap->zap_m.zap_alloc_next = i+1;
			if (zap->zap_m.zap_alloc_next ==
			    zap->zap_m.zap_num_chunks)
				zap->zap_m.zap_alloc_next = 0;
			FUNC2(0 == FUNC4(zap, i, zn->zn_hash));
			return;
		}
	}
	if (start != 0) {
		start = 0;
		goto again;
	}
	FUNC0(!"out of entries!");
}