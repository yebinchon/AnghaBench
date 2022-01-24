#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_2__ {char* ddsa_name; int /*<<< orphan*/  ddsa_defer; } ;
typedef  TYPE_1__ dsl_destroy_snapshot_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(void *arg, dmu_tx_t *tx)
{
	dsl_destroy_snapshot_arg_t *ddsa = arg;
	const char *dsname = ddsa->ddsa_name;
	boolean_t defer = ddsa->ddsa_defer;

	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;

	int error = FUNC2(dp, dsname, FTAG, &ds);
	if (error == ENOENT)
		return;
	FUNC0(error);
	FUNC4(ds, defer, tx);
	FUNC3(ds, FTAG);
}