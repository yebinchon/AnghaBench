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
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_1__ dsl_dataset_set_qr_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;

	FUNC0(FUNC2(dp, ddsqra->ddsqra_name, FTAG, &ds));
	FUNC4(ds,
	    ddsqra->ddsqra_source, ddsqra->ddsqra_value, tx);
	FUNC3(ds, FTAG);
}