#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int zc_cookie; scalar_t__ zc_nvlist_src; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src_size; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_17__ {scalar_t__ spa_last_open_failed; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_LOG_CLEAR ; 
 scalar_t__ SPA_LOG_MISSING ; 
 int ZPOOL_NO_REWIND ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC17(zfs_cmd_t *zc)
{
	spa_t *spa;
	vdev_t *vd;
	int error;

	/*
	 * On zpool clear we also fix up missing slogs
	 */
	FUNC2(&spa_namespace_lock);
	spa = FUNC8(zc->zc_name);
	if (spa == NULL) {
		FUNC3(&spa_namespace_lock);
		return (FUNC0(EIO));
	}
	if (FUNC7(spa) == SPA_LOG_MISSING) {
		/* we need to let spa_open/spa_load clear the chains */
		FUNC12(spa, SPA_LOG_CLEAR);
	}
	spa->spa_last_open_failed = 0;
	FUNC3(&spa_namespace_lock);

	if (zc->zc_cookie & ZPOOL_NO_REWIND) {
		error = FUNC10(zc->zc_name, &spa, FTAG);
	} else {
		nvlist_t *policy;
		nvlist_t *config = NULL;

		if (zc->zc_nvlist_src == 0)
			return (FUNC0(EINVAL));

		if ((error = FUNC1(zc->zc_nvlist_src,
		    zc->zc_nvlist_src_size, zc->zc_iflags, &policy)) == 0) {
			error = FUNC11(zc->zc_name, &spa, FTAG,
			    policy, &config);
			if (config != NULL) {
				int err;

				if ((err = FUNC5(zc, config)) != 0)
					error = err;
				FUNC4(config);
			}
			FUNC4(policy);
		}
	}

	if (error != 0)
		return (error);

	FUNC13(spa, SCL_NONE);

	if (zc->zc_guid == 0) {
		vd = NULL;
	} else {
		vd = FUNC9(spa, zc->zc_guid, B_TRUE);
		if (vd == NULL) {
			(void) FUNC14(spa, NULL, ENODEV);
			FUNC6(spa, FTAG);
			return (FUNC0(ENODEV));
		}
	}

	FUNC15(spa, vd);

	(void) FUNC14(spa, NULL, 0);

	/*
	 * Resume any suspended I/Os.
	 */
	if (FUNC16(spa) != 0)
		error = FUNC0(EIO);

	FUNC6(spa, FTAG);

	return (error);
}