#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_14__ {int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_15__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_userrefs_obj; } ;
struct TYPE_13__ {TYPE_1__* dd_pool; } ;
struct TYPE_12__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_4__**) ; 
 TYPE_9__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 

int
FUNC12(const char *dsname, nvlist_t *nvl)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	int err;

	err = FUNC3(dsname, FTAG, &dp);
	if (err != 0)
		return (err);
	err = FUNC0(dp, dsname, FTAG, &ds);
	if (err != 0) {
		FUNC4(dp, FTAG);
		return (err);
	}

	if (FUNC1(ds)->ds_userrefs_obj != 0) {
		zap_attribute_t *za;
		zap_cursor_t zc;

		za = FUNC6(sizeof (zap_attribute_t), KM_SLEEP);
		for (FUNC10(&zc, ds->ds_dir->dd_pool->dp_meta_objset,
		    FUNC1(ds)->ds_userrefs_obj);
		    FUNC11(&zc, za) == 0;
		    FUNC8(&zc)) {
			FUNC5(nvl, za->za_name,
			    za->za_first_integer);
		}
		FUNC9(&zc);
		FUNC7(za, sizeof (zap_attribute_t));
	}
	FUNC2(ds, FTAG);
	FUNC4(dp, FTAG);
	return (0);
}