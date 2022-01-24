#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  dd_pool; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {int /*<<< orphan*/  doca_cred; int /*<<< orphan*/  doca_origin; int /*<<< orphan*/  doca_clone; } ;
typedef  TYPE_3__ dmu_objset_clone_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,char const**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *arg, dmu_tx_t *tx)
{
	dmu_objset_clone_arg_t *doca = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dir_t *pdd;
	const char *tail;
	dsl_dataset_t *origin, *ds;
	uint64_t obj;
	char namebuf[ZFS_MAX_DATASET_NAME_LEN];

	FUNC0(FUNC7(dp, doca->doca_clone, FTAG, &pdd, &tail));
	FUNC0(FUNC3(dp, doca->doca_origin, FTAG, &origin));

	obj = FUNC2(pdd, tail, origin, 0,
	    doca->doca_cred, tx);

	FUNC0(FUNC4(pdd->dd_pool, obj, FTAG, &ds));
	FUNC5(origin, namebuf);
	FUNC9(ds, "clone", tx,
	    "origin=%s (%llu)", namebuf, origin->ds_object);
	FUNC6(ds, FTAG);
	FUNC6(origin, FTAG);
	FUNC8(pdd, FTAG);
}