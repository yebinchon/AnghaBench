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
struct TYPE_3__ {int zc_cookie; scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; int /*<<< orphan*/  zc_string; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src; int /*<<< orphan*/  zc_nvlist_conf; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int ZPOOL_EXPORT_AFTER_SPLIT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	spa_t *spa;
	nvlist_t *config, *props = NULL;
	int error;
	boolean_t exp = !!(zc->zc_cookie & ZPOOL_EXPORT_AFTER_SPLIT);

	if ((error = FUNC3(zc->zc_name, &spa, FTAG)) != 0)
		return (error);

	if ((error = FUNC0(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config))) {
		FUNC2(spa, FTAG);
		return (error);
	}

	if (zc->zc_nvlist_src_size != 0 && (error =
	    FUNC0(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props))) {
		FUNC2(spa, FTAG);
		FUNC1(config);
		return (error);
	}

	error = FUNC4(spa, zc->zc_string, config, props, exp);

	FUNC2(spa, FTAG);

	FUNC1(config);
	FUNC1(props);

	return (error);
}