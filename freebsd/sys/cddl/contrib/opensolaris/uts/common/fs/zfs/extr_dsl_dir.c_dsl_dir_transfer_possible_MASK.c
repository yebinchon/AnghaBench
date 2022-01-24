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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_FILESYSTEM_LIMIT ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_LIMIT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(dsl_dir_t *sdd, dsl_dir_t *tdd,
    uint64_t fs_cnt, uint64_t ss_cnt, uint64_t space, cred_t *cr)
{
	dsl_dir_t *ancestor;
	int64_t adelta;
	uint64_t avail;
	int err;

	ancestor = FUNC1(sdd, tdd);
	adelta = FUNC4(sdd, -space, ancestor);
	avail = FUNC2(tdd, ancestor, adelta, FALSE);
	if (avail < space)
		return (FUNC0(ENOSPC));

	err = FUNC3(tdd, fs_cnt, ZFS_PROP_FILESYSTEM_LIMIT,
	    ancestor, cr);
	if (err != 0)
		return (err);
	err = FUNC3(tdd, ss_cnt, ZFS_PROP_SNAPSHOT_LIMIT,
	    ancestor, cr);
	if (err != 0)
		return (err);

	return (0);
}