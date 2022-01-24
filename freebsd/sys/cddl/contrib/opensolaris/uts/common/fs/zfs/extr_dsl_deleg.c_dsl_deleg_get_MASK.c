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
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_13__ {int za_integer_length; int za_num_integers; scalar_t__ za_first_integer; char* za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_14__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {struct TYPE_15__* dd_parent; TYPE_2__* dd_pool; } ;
typedef  TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {scalar_t__ dd_deleg_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_8__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC19(const char *ddname, nvlist_t **nvp)
{
	dsl_dir_t *dd, *startdd;
	dsl_pool_t *dp;
	int error;
	objset_t *mos;

	error = FUNC6(ddname, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC2(dp, ddname, FTAG, &startdd, NULL);
	if (error != 0) {
		FUNC7(dp, FTAG);
		return (error);
	}

	dp = startdd->dd_pool;
	mos = dp->dp_meta_objset;

	FUNC1(FUNC12(nvp, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	for (dd = startdd; dd != NULL; dd = dd->dd_parent) {
		zap_cursor_t basezc;
		zap_attribute_t baseza;
		nvlist_t *sp_nvp;
		uint64_t n;
		char source[ZFS_MAX_DATASET_NAME_LEN];

		if (FUNC4(dd)->dd_deleg_zapobj == 0 ||
		    FUNC14(mos,
		    FUNC4(dd)->dd_deleg_zapobj, &n) != 0 || n == 0)
			continue;

		sp_nvp = FUNC10();
		for (FUNC17(&basezc, mos,
		    FUNC4(dd)->dd_deleg_zapobj);
		    FUNC18(&basezc, &baseza) == 0;
		    FUNC15(&basezc)) {
			zap_cursor_t zc;
			zap_attribute_t za;
			nvlist_t *perms_nvp;

			FUNC0(baseza.za_integer_length == 8);
			FUNC0(baseza.za_num_integers == 1);

			perms_nvp = FUNC10();
			for (FUNC17(&zc, mos, baseza.za_first_integer);
			    FUNC18(&zc, &za) == 0;
			    FUNC15(&zc)) {
				FUNC8(perms_nvp, za.za_name);
			}
			FUNC16(&zc);
			FUNC9(sp_nvp, baseza.za_name, perms_nvp);
			FUNC11(perms_nvp);
		}

		FUNC16(&basezc);

		FUNC3(dd, source);
		FUNC9(*nvp, source, sp_nvp);
		FUNC13(sp_nvp);
	}

	FUNC5(startdd, FTAG);
	FUNC7(dp, FTAG);
	return (0);
}