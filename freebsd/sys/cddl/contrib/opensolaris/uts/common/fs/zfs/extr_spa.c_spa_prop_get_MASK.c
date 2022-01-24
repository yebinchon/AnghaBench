#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zpool_prop_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_7__ {int za_integer_length; int /*<<< orphan*/  za_num_integers; int /*<<< orphan*/  za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {scalar_t__ spa_pool_props_object; int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 int /*<<< orphan*/  ZPOOL_PROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_SRC_DEFAULT ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC19 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22(spa_t *spa, nvlist_t **nvp)
{
	objset_t *mos = spa->spa_meta_objset;
	zap_cursor_t zc;
	zap_attribute_t za;
	int err;

	FUNC0(FUNC10(nvp, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	FUNC8(&spa->spa_props_lock);

	/*
	 * Get properties from the spa config.
	 */
	FUNC14(spa, nvp);

	/* If no pool property object, no more prop to get. */
	if (mos == NULL || spa->spa_pool_props_object == 0) {
		FUNC9(&spa->spa_props_lock);
		return (0);
	}

	/*
	 * Get properties from the MOS pool property object.
	 */
	for (FUNC17(&zc, mos, spa->spa_pool_props_object);
	    (err = FUNC18(&zc, &za)) == 0;
	    FUNC15(&zc)) {
		uint64_t intval = 0;
		char *strval = NULL;
		zprop_source_t src = ZPROP_SRC_DEFAULT;
		zpool_prop_t prop;

		if ((prop = FUNC20(za.za_name)) == ZPOOL_PROP_INVAL)
			continue;

		switch (za.za_integer_length) {
		case 8:
			/* integer property */
			if (za.za_first_integer !=
			    FUNC21(prop))
				src = ZPROP_SRC_LOCAL;

			if (prop == ZPOOL_PROP_BOOTFS) {
				dsl_pool_t *dp;
				dsl_dataset_t *ds = NULL;

				dp = FUNC12(spa);
				FUNC4(dp, FTAG);
				err = FUNC1(dp,
				    za.za_first_integer, FTAG, &ds);
				if (err != 0) {
					FUNC5(dp, FTAG);
					break;
				}

				strval = FUNC6(ZFS_MAX_DATASET_NAME_LEN,
				    KM_SLEEP);
				FUNC2(ds, strval);
				FUNC3(ds, FTAG);
				FUNC5(dp, FTAG);
			} else {
				strval = NULL;
				intval = za.za_first_integer;
			}

			FUNC13(*nvp, prop, strval, intval, src);

			if (strval != NULL)
				FUNC7(strval, ZFS_MAX_DATASET_NAME_LEN);

			break;

		case 1:
			/* string property */
			strval = FUNC6(za.za_num_integers, KM_SLEEP);
			err = FUNC19(mos, spa->spa_pool_props_object,
			    za.za_name, 1, za.za_num_integers, strval);
			if (err) {
				FUNC7(strval, za.za_num_integers);
				break;
			}
			FUNC13(*nvp, prop, strval, 0, src);
			FUNC7(strval, za.za_num_integers);
			break;

		default:
			break;
		}
	}
	FUNC16(&zc);
	FUNC9(&spa->spa_props_lock);
out:
	if (err && err != ENOENT) {
		FUNC11(*nvp);
		*nvp = NULL;
		return (err);
	}

	return (0);
}