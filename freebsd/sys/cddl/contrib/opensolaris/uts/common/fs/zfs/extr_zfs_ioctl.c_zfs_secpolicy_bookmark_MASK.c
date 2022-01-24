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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_BOOKMARK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	int error = 0;

	for (nvpair_t *pair = FUNC1(innvl, NULL);
	    pair != NULL; pair = FUNC1(innvl, pair)) {
		char *name = FUNC2(pair);
		char *hashp = FUNC3(name, '#');

		if (hashp == NULL) {
			error = FUNC0(EINVAL);
			break;
		}
		*hashp = '\0';
		error = FUNC4(name,
		    ZFS_DELEG_PERM_BOOKMARK, cr);
		*hashp = '#';
		if (error != 0)
			break;
	}
	return (error);
}