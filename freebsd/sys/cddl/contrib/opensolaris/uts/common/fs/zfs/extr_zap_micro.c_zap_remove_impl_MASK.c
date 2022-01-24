#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  zap_num_entries; } ;
struct TYPE_12__ {TYPE_1__ zap_m; int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  zap_name_t ;
struct TYPE_13__ {size_t mze_chunkid; } ;
typedef  TYPE_3__ mzap_ent_t ;
typedef  int /*<<< orphan*/  mzap_ent_phys_t ;
typedef  int /*<<< orphan*/  matchtype_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {int /*<<< orphan*/ * mz_chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_6__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zap_t *zap, const char *name,
    matchtype_t mt, dmu_tx_t *tx)
{
	int err = 0;

	zap_name_t *zn = FUNC6(zap, name, mt);
	if (zn == NULL)
		return (FUNC0(ENOTSUP));
	if (!zap->zap_ismicro) {
		err = FUNC2(zn, tx);
	} else {
		mzap_ent_t *mze = FUNC3(zn);
		if (mze == NULL) {
			err = FUNC0(ENOENT);
		} else {
			zap->zap_m.zap_num_entries--;
			FUNC1(&FUNC5(zap)->mz_chunk[mze->mze_chunkid],
			    sizeof (mzap_ent_phys_t));
			FUNC4(zap, mze);
		}
	}
	FUNC7(zn);
	return (err);
}