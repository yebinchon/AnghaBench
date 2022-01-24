#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_13__ {TYPE_8__* dd_pool; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {int /*<<< orphan*/  doca_cred; int /*<<< orphan*/  doca_userarg; int /*<<< orphan*/  (* doca_userfunc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  doca_type; int /*<<< orphan*/  doca_flags; int /*<<< orphan*/  doca_name; } ;
typedef  TYPE_3__ dmu_objset_create_arg_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_16__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,char const**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *arg, dmu_tx_t *tx)
{
	dmu_objset_create_arg_t *doca = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dir_t *pdd;
	const char *tail;
	dsl_dataset_t *ds;
	uint64_t obj;
	blkptr_t *bp;
	objset_t *os;

	FUNC0(FUNC7(dp, doca->doca_name, FTAG, &pdd, &tail));

	obj = FUNC3(pdd, tail, NULL, doca->doca_flags,
	    doca->doca_cred, tx);

	FUNC0(FUNC5(pdd->dd_pool, obj, FTAG, &ds));
	FUNC9(&ds->ds_bp_rwlock, RW_READER, FTAG);
	bp = FUNC4(ds);
	os = FUNC1(pdd->dd_pool->dp_spa,
	    ds, bp, doca->doca_type, tx);
	FUNC10(&ds->ds_bp_rwlock, FTAG);

	if (doca->doca_userfunc != NULL) {
		doca->doca_userfunc(os, doca->doca_userarg,
		    doca->doca_cred, tx);
	}

	FUNC11(ds, "create", tx, "");
	FUNC6(ds, FTAG);
	FUNC8(pdd, FTAG);
}