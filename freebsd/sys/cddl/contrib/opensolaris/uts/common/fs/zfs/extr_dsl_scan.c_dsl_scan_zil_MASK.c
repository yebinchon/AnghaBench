#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_8__ {TYPE_2__* member_1; TYPE_3__* member_0; } ;
typedef  TYPE_1__ zil_scan_arg_t ;
struct TYPE_9__ {scalar_t__ zh_claim_txg; } ;
typedef  TYPE_2__ zil_header_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_scan_zil_block ; 
 int /*<<< orphan*/  dsl_scan_zil_record ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(dsl_pool_t *dp, zil_header_t *zh)
{
	uint64_t claim_txg = zh->zh_claim_txg;
	zil_scan_arg_t zsa = { dp, zh };
	zilog_t *zilog;

	FUNC0(FUNC1(dp->dp_spa));

	/*
	 * We only want to visit blocks that have been claimed
	 * but not yet replayed.
	 */
	if (claim_txg == 0)
		return;

	zilog = FUNC2(dp->dp_meta_objset, zh);

	(void) FUNC4(zilog, dsl_scan_zil_block, dsl_scan_zil_record, &zsa,
	    claim_txg);

	FUNC3(zilog);
}