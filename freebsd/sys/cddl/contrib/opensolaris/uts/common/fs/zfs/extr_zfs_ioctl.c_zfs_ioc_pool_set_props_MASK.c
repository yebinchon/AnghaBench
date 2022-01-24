#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src_size; int /*<<< orphan*/  zc_nvlist_src; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZPOOL_PROP_CACHEFILE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(zfs_cmd_t *zc)
{
	nvlist_t *props;
	spa_t *spa;
	int error;
	nvpair_t *pair;

	if ((error = FUNC0(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props)))
		return (error);

	/*
	 * If the only property is the configfile, then just do a spa_lookup()
	 * to handle the faulted case.
	 */
	pair = FUNC4(props, NULL);
	if (pair != NULL && FUNC12(FUNC5(pair),
	    FUNC13(ZPOOL_PROP_CACHEFILE)) == 0 &&
	    FUNC4(props, pair) == NULL) {
		FUNC1(&spa_namespace_lock);
		if ((spa = FUNC8(zc->zc_name)) != NULL) {
			FUNC7(spa, props, B_FALSE);
			FUNC11(spa, B_FALSE, B_TRUE);
		}
		FUNC2(&spa_namespace_lock);
		if (spa != NULL) {
			FUNC3(props);
			return (0);
		}
	}

	if ((error = FUNC9(zc->zc_name, &spa, FTAG)) != 0) {
		FUNC3(props);
		return (error);
	}

	error = FUNC10(spa, props);

	FUNC3(props);
	FUNC6(spa, FTAG);

	return (error);
}