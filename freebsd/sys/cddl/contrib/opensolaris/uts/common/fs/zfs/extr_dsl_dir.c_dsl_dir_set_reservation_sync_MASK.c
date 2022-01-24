#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_11__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_2__ dsl_dir_set_qr_arg_t ;
struct TYPE_13__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_RECVD_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_RESERVATION ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *arg, dmu_tx_t *tx)
{
	dsl_dir_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;
	uint64_t newval;

	FUNC0(FUNC2(dp, ddsqra->ddsqra_name, FTAG, &ds));

	if (FUNC8(dp->dp_spa) >= SPA_VERSION_RECVD_PROPS) {
		FUNC6(ds,
		    FUNC9(ZFS_PROP_RESERVATION),
		    ddsqra->ddsqra_source, sizeof (ddsqra->ddsqra_value), 1,
		    &ddsqra->ddsqra_value, tx);

		FUNC0(FUNC5(ds,
		    FUNC9(ZFS_PROP_RESERVATION), &newval));
	} else {
		newval = ddsqra->ddsqra_value;
		FUNC7(ds, "set", tx, "%s=%lld",
		    FUNC9(ZFS_PROP_RESERVATION),
		    (longlong_t)newval);
	}

	FUNC4(ds->ds_dir, newval, tx);
	FUNC3(ds, FTAG);
}