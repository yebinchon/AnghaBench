#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_20__ {scalar_t__ ddb_class; size_t ddb_checksum; scalar_t__ ddb_cursor; scalar_t__ ddb_type; } ;
struct TYPE_16__ {scalar_t__ scn_ddt_class_max; TYPE_6__ scn_ddt_bookmark; } ;
struct TYPE_17__ {TYPE_2__ scn_phys; scalar_t__ scn_suspending; TYPE_1__* scn_dp; } ;
typedef  TYPE_3__ dsl_scan_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_18__ {int /*<<< orphan*/  ddt_tree; } ;
typedef  TYPE_4__ ddt_t ;
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ ddt_entry_t ;
typedef  TYPE_6__ ddt_bookmark_t ;
struct TYPE_15__ {TYPE_11__* dp_spa; } ;
struct TYPE_14__ {TYPE_4__** spa_ddt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_11__*,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(dsl_scan_t *scn, dmu_tx_t *tx)
{
	ddt_bookmark_t *ddb = &scn->scn_phys.scn_ddt_bookmark;
	ddt_entry_t dde = { 0 };
	int error;
	uint64_t n = 0;

	while ((error = FUNC2(scn->scn_dp->dp_spa, ddb, &dde)) == 0) {
		ddt_t *ddt;

		if (ddb->ddb_class > scn->scn_phys.scn_ddt_class_max)
			break;
		FUNC3("visiting ddb=%llu/%llu/%llu/%llx\n",
		    (longlong_t)ddb->ddb_class,
		    (longlong_t)ddb->ddb_type,
		    (longlong_t)ddb->ddb_checksum,
		    (longlong_t)ddb->ddb_cursor);

		/* There should be no pending changes to the dedup table */
		ddt = scn->scn_dp->dp_spa->spa_ddt[ddb->ddb_checksum];
		FUNC0(FUNC1(&ddt->ddt_tree) == NULL);

		FUNC5(scn, ddb->ddb_checksum, &dde, tx);
		n++;

		if (FUNC4(scn, NULL))
			break;
	}

	FUNC6("scanned %llu ddt entries with class_max = %u; "
	    "suspending=%u", (longlong_t)n,
	    (int)scn->scn_phys.scn_ddt_class_max, (int)scn->scn_suspending);

	FUNC0(error == 0 || error == ENOENT);
	FUNC0(error != ENOENT ||
	    ddb->ddb_class > scn->scn_phys.scn_ddt_class_max);
}