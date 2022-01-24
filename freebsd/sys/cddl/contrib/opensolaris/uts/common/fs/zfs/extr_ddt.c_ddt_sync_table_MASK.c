#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {scalar_t__ spa_ddt_stat_object; TYPE_1__ spa_uberblock; } ;
typedef  TYPE_2__ spa_t ;
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {int /*<<< orphan*/  ddt_histogram_cache; int /*<<< orphan*/  ddt_histogram; int /*<<< orphan*/  ddt_tree; int /*<<< orphan*/  ddt_os; TYPE_2__* ddt_spa; } ;
typedef  TYPE_3__ ddt_t ;
typedef  int /*<<< orphan*/  ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDT_CLASSES ; 
 int DDT_TYPES ; 
 int /*<<< orphan*/  DMU_OT_DDT_STATS ; 
 int /*<<< orphan*/  DMU_POOL_DDT_STATS ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 scalar_t__ SPA_VERSION_DEDUP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(ddt_t *ddt, dmu_tx_t *tx, uint64_t txg)
{
	spa_t *spa = ddt->ddt_spa;
	ddt_entry_t *dde;
	void *cookie = NULL;

	if (FUNC3(&ddt->ddt_tree) == 0)
		return;

	FUNC0(spa->spa_uberblock.ub_version >= SPA_VERSION_DEDUP);

	if (spa->spa_ddt_stat_object == 0) {
		spa->spa_ddt_stat_object = FUNC11(ddt->ddt_os,
		    DMU_OT_DDT_STATS, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_DDT_STATS, tx);
	}

	while ((dde = FUNC2(&ddt->ddt_tree, &cookie)) != NULL) {
		FUNC10(ddt, dde, tx, txg);
		FUNC5(dde);
	}

	for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
		uint64_t add, count = 0;
		for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {
			if (FUNC8(ddt, type, class)) {
				FUNC9(ddt, type, class, tx);
				FUNC1(FUNC6(ddt, type, class,
				    &add) == 0);
				count += add;
			}
		}
		for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {
			if (count == 0 && FUNC8(ddt, type, class))
				FUNC7(ddt, type, class, tx);
		}
	}

	FUNC4(ddt->ddt_histogram, &ddt->ddt_histogram_cache,
	    sizeof (ddt->ddt_histogram));
}