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
struct TYPE_7__ {int /*<<< orphan*/  spa_config_list; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_8__ {int /*<<< orphan*/ * scd_path; } ;
typedef  TYPE_2__ spa_config_dirent_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SPA_ASYNC_CONFIG_UPDATE ; 
 int /*<<< orphan*/  ZPOOL_PROP_CACHEFILE ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* spa_config_path ; 
 void* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(spa_t *spa, nvlist_t *nvp, boolean_t need_sync)
{
	char *cachefile;
	spa_config_dirent_t *dp;

	if (FUNC2(nvp, FUNC6(ZPOOL_PROP_CACHEFILE),
	    &cachefile) != 0)
		return;

	dp = FUNC0(sizeof (spa_config_dirent_t),
	    KM_SLEEP);

	if (cachefile[0] == '\0')
		dp->scd_path = FUNC4(spa_config_path);
	else if (FUNC5(cachefile, "none") == 0)
		dp->scd_path = NULL;
	else
		dp->scd_path = FUNC4(cachefile);

	FUNC1(&spa->spa_config_list, dp);
	if (need_sync)
		FUNC3(spa, SPA_ASYNC_CONFIG_UPDATE);
}