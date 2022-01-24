#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  guid_as_str ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int MAXNAMELEN ; 
 scalar_t__ POOL_INITIALIZE_CANCEL ; 
 scalar_t__ POOL_INITIALIZE_DO ; 
 scalar_t__ POOL_INITIALIZE_SUSPEND ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_COMMAND ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC14(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	spa_t *spa;
	int error;

	error = FUNC12(poolname, &spa, FTAG);
	if (error != 0)
		return (error);

	uint64_t cmd_type;
	if (FUNC8(innvl, ZPOOL_INITIALIZE_COMMAND,
	    &cmd_type) != 0) {
		FUNC11(spa, FTAG);
		return (FUNC0(EINVAL));
	}
	if (!(cmd_type == POOL_INITIALIZE_CANCEL ||
	    cmd_type == POOL_INITIALIZE_DO ||
	    cmd_type == POOL_INITIALIZE_SUSPEND)) {
		FUNC11(spa, FTAG);
		return (FUNC0(EINVAL));
	}

	nvlist_t *vdev_guids;
	if (FUNC7(innvl, ZPOOL_INITIALIZE_VDEVS,
	    &vdev_guids) != 0) {
		FUNC11(spa, FTAG);
		return (FUNC0(EINVAL));
	}

	nvlist_t *vdev_errlist = FUNC3();
	int total_errors = 0;

	for (nvpair_t *pair = FUNC9(vdev_guids, NULL);
	    pair != NULL; pair = FUNC9(vdev_guids, pair)) {
		uint64_t vdev_guid = FUNC6(pair);

		error = FUNC13(spa, vdev_guid, cmd_type);
		if (error != 0) {
			char guid_as_str[MAXNAMELEN];

			(void) FUNC10(guid_as_str, sizeof (guid_as_str),
			    "%llu", (unsigned long long)vdev_guid);
			FUNC1(vdev_errlist, guid_as_str, error);
			total_errors++;
		}
	}
	if (FUNC5(vdev_errlist) > 0) {
		FUNC2(outnvl, ZPOOL_INITIALIZE_VDEVS,
		    vdev_errlist);
	}
	FUNC4(vdev_errlist);

	FUNC11(spa, FTAG);
	return (total_errors > 0 ? EINVAL : 0);
}