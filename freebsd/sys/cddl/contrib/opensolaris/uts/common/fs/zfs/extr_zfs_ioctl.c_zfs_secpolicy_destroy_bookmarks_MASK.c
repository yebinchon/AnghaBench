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
 int /*<<< orphan*/  ZFS_DELEG_PERM_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	nvpair_t *pair, *nextpair;
	int error = 0;

	for (pair = FUNC2(innvl, NULL); pair != NULL;
	    pair = nextpair) {
		char *name = FUNC3(pair);
		char *hashp = FUNC4(name, '#');
		nextpair = FUNC2(innvl, pair);

		if (hashp == NULL) {
			error = FUNC0(EINVAL);
			break;
		}

		*hashp = '\0';
		error = FUNC5(name,
		    ZFS_DELEG_PERM_DESTROY, cr);
		*hashp = '#';
		if (error == ENOENT) {
			/*
			 * Ignore any filesystems that don't exist (we consider
			 * their bookmarks "already destroyed").  Remove
			 * the name from the nvl here in case the filesystem
			 * is created between now and when we try to destroy
			 * the bookmark (in which case we don't want to
			 * destroy it since we haven't checked for permission).
			 */
			FUNC1(innvl, pair);
			error = 0;
		}
		if (error != 0)
			break;
	}

	return (error);
}