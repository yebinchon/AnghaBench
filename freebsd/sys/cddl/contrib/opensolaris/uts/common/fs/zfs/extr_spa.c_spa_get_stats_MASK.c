#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_15__ {int /*<<< orphan*/  spa_failmode; TYPE_1__ spa_loaded_ts; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ERRCOUNT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOADED_TIME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (char const*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC14 (char const*,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 

int
FUNC16(const char *name, nvlist_t **config,
    char *altroot, size_t buflen)
{
	int error;
	spa_t *spa;

	*config = NULL;
	error = FUNC14(name, &spa, FTAG, NULL, config);

	if (spa != NULL) {
		/*
		 * This still leaves a window of inconsistency where the spares
		 * or l2cache devices could change and the config would be
		 * self-inconsistent.
		 */
		FUNC10(spa, SCL_CONFIG, FTAG, RW_READER);

		if (*config != NULL) {
			uint64_t loadtimes[2];

			loadtimes[0] = spa->spa_loaded_ts.tv_sec;
			loadtimes[1] = spa->spa_loaded_ts.tv_nsec;
			FUNC0(FUNC4(*config,
			    ZPOOL_CONFIG_LOADED_TIME, loadtimes, 2) == 0);

			FUNC0(FUNC3(*config,
			    ZPOOL_CONFIG_ERRCOUNT,
			    FUNC12(spa)) == 0);

			if (FUNC15(spa))
				FUNC0(FUNC3(*config,
				    ZPOOL_CONFIG_SUSPENDED,
				    spa->spa_failmode) == 0);

			FUNC7(spa, *config);
			FUNC6(spa, *config);
			FUNC5(spa, *config);
		}
	}

	/*
	 * We want to get the alternate root even for faulted pools, so we cheat
	 * and call spa_lookup() directly.
	 */
	if (altroot) {
		if (spa == NULL) {
			FUNC1(&spa_namespace_lock);
			spa = FUNC13(name);
			if (spa)
				FUNC8(spa, altroot, buflen);
			else
				altroot[0] = '\0';
			spa = NULL;
			FUNC2(&spa_namespace_lock);
		} else {
			FUNC8(spa, altroot, buflen);
		}
	}

	if (spa != NULL) {
		FUNC11(spa, SCL_CONFIG, FTAG);
		FUNC9(spa, FTAG);
	}

	return (error);
}