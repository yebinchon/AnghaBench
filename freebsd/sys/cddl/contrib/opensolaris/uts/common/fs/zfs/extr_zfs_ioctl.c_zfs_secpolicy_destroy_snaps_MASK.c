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
typedef  int /*<<< orphan*/  zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	nvlist_t *snaps;
	nvpair_t *pair, *nextpair;
	int error = 0;

	if (FUNC2(innvl, "snaps", &snaps) != 0)
		return (FUNC0(EINVAL));
	for (pair = FUNC3(snaps, NULL); pair != NULL;
	    pair = nextpair) {
		nextpair = FUNC3(snaps, pair);
		error = FUNC5(FUNC4(pair), cr);
		if (error == ENOENT) {
			/*
			 * Ignore any snapshots that don't exist (we consider
			 * them "already destroyed").  Remove the name from the
			 * nvl here in case the snapshot is created between
			 * now and when we try to destroy it (in which case
			 * we don't want to destroy it since we haven't
			 * checked for permission).
			 */
			FUNC1(snaps, pair);
			error = 0;
		}
		if (error != 0)
			break;
	}

	return (error);
}