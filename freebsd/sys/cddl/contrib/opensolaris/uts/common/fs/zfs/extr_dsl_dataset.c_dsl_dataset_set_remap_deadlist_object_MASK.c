#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  obj ;
struct TYPE_8__ {int /*<<< orphan*/  ds_object; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {TYPE_1__* dd_pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DS_FIELD_REMAP_DEADLIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(dsl_dataset_t *ds, uint64_t obj,
    dmu_tx_t *tx)
{
	FUNC0(obj != 0);
	FUNC2(ds, tx);
	FUNC1(FUNC3(ds->ds_dir->dd_pool->dp_meta_objset, ds->ds_object,
	    DS_FIELD_REMAP_DEADLIST, sizeof (obj), 1, &obj, tx));
}