#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* scn_dp; } ;
typedef  TYPE_2__ dsl_scan_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {TYPE_2__* dp_scan; } ;
struct TYPE_6__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ESC_ZFS_SCRUB_ABORT ; 
 int /*<<< orphan*/  SYNC_MANDATORY ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, dmu_tx_t *tx)
{
	dsl_scan_t *scn = FUNC0(tx)->dp_scan;

	FUNC1(scn, B_FALSE, tx);
	FUNC2(scn, tx, SYNC_MANDATORY);
	FUNC3(scn->scn_dp->dp_spa, NULL, NULL, ESC_ZFS_SCRUB_ABORT);
}