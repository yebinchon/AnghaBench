#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int zc_cookie; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(zfs_cmd_t *zc)
{
	nvlist_t *config;
	int error;
	int ret = 0;

	error = FUNC2(zc->zc_name, &config, zc->zc_value,
	    sizeof (zc->zc_value));

	if (config != NULL) {
		ret = FUNC1(zc, config);
		FUNC0(config);

		/*
		 * The config may be present even if 'error' is non-zero.
		 * In this case we return success, and preserve the real errno
		 * in 'zc_cookie'.
		 */
		zc->zc_cookie = error;
	} else {
		ret = error;
	}

	return (ret);
}