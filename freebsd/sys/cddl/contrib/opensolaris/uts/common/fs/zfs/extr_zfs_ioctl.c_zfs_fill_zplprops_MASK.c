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
typedef  int /*<<< orphan*/  parentname ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 scalar_t__ ZPL_VERSION ; 
 scalar_t__ ZPL_VERSION_FUID ; 
 scalar_t__ ZPL_VERSION_SA ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(const char *dataset, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
	boolean_t fuids_ok, sa_ok;
	uint64_t zplver = ZPL_VERSION;
	objset_t *os = NULL;
	char parentname[ZFS_MAX_DATASET_NAME_LEN];
	char *cp;
	spa_t *spa;
	uint64_t spa_vers;
	int error;

	(void) FUNC6(parentname, dataset, sizeof (parentname));
	cp = FUNC7(parentname, '/');
	FUNC0(cp != NULL);
	cp[0] = '\0';

	if ((error = FUNC4(dataset, &spa, FTAG)) != 0)
		return (error);

	spa_vers = FUNC5(spa);
	FUNC3(spa, FTAG);

	zplver = FUNC9(spa_vers);
	fuids_ok = (zplver >= ZPL_VERSION_FUID);
	sa_ok = (zplver >= ZPL_VERSION_SA);

	/*
	 * Open parent object set so we can inherit zplprop values.
	 */
	if ((error = FUNC1(parentname, FTAG, &os)) != 0)
		return (error);

	error = FUNC8(os, zplver, fuids_ok, sa_ok, createprops,
	    zplprops, is_ci);
	FUNC2(os, FTAG);
	return (error);
}