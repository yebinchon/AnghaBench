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
struct TYPE_3__ {int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_history_len; scalar_t__ zc_history; int /*<<< orphan*/  zc_history_offset; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ; 
 int FUNC1 (char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zfs_cmd_t *zc)
{
	spa_t *spa;
	char *hist_buf;
	uint64_t size;
	int error;

	if ((size = zc->zc_history_len) == 0)
		return (FUNC0(EINVAL));

	if ((error = FUNC6(zc->zc_name, &spa, FTAG)) != 0)
		return (error);

	if (FUNC7(spa) < SPA_VERSION_ZPOOL_HISTORY) {
		FUNC4(spa, FTAG);
		return (FUNC0(ENOTSUP));
	}

	hist_buf = FUNC2(size, KM_SLEEP);
	if ((error = FUNC5(spa, &zc->zc_history_offset,
	    &zc->zc_history_len, hist_buf)) == 0) {
		error = FUNC1(hist_buf,
		    (void *)(uintptr_t)zc->zc_history,
		    zc->zc_history_len, zc->zc_iflags);
	}

	FUNC4(spa, FTAG);
	FUNC3(hist_buf, size);
	return (error);
}