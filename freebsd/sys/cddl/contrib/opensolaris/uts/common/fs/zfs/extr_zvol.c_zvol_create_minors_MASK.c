#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  os_dsl_dataset; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 scalar_t__ DMU_OST_ZVOL ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int FUNC14 (char*,int,char*,char const*) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (char const*) ; 
 int FUNC17 (TYPE_1__*,char const*) ; 

int
FUNC18(const char *name)
{
	uint64_t cookie;
	objset_t *os;
	char *osname, *p;
	int error, len;

	if (FUNC0(name))
		return (0);

	if ((error = FUNC2(name, FTAG, &os)) != 0) {
		FUNC13("ZFS WARNING: Unable to put hold on %s (error=%d).\n",
		    name, error);
		return (error);
	}
	if (FUNC6(os) == DMU_OST_ZVOL) {
		FUNC7(os->os_dsl_dataset, FTAG);
		FUNC10(FUNC3(os), FTAG);
		error = FUNC16(name);
		if (error == 0 || error == EEXIST) {
			error = FUNC17(os, name);
		} else {
			FUNC13("ZFS WARNING: Unable to create ZVOL %s (error=%d).\n",
			    name, error);
		}
		FUNC8(os->os_dsl_dataset, FTAG);
		FUNC9(os->os_dsl_dataset, FTAG);
		return (error);
	}
	if (FUNC6(os) != DMU_OST_ZFS) {
		FUNC5(os, FTAG);
		return (0);
	}

	osname = FUNC11(MAXPATHLEN, KM_SLEEP);
	if (FUNC14(osname, MAXPATHLEN, "%s/", name) >= MAXPATHLEN) {
		FUNC5(os, FTAG);
		FUNC12(osname, MAXPATHLEN);
		return (ENOENT);
	}
	p = osname + FUNC15(osname);
	len = MAXPATHLEN - (p - osname);

#if 0
	/* Prefetch the datasets. */
	cookie = 0;
	while (dmu_dir_list_next(os, len, p, NULL, &cookie) == 0) {
		if (!dataset_name_hidden(osname))
			(void) dmu_objset_prefetch(osname, NULL);
	}
#endif

	cookie = 0;
	while (FUNC1(os, MAXPATHLEN - (p - osname), p, NULL,
	    &cookie) == 0) {
		FUNC5(os, FTAG);
		(void)FUNC18(osname);
		if ((error = FUNC2(name, FTAG, &os)) != 0) {
			FUNC13("ZFS WARNING: Unable to put hold on %s (error=%d).\n",
			    name, error);
			return (error);
		}
	}

	FUNC5(os, FTAG);
	FUNC12(osname, MAXPATHLEN);
	return (0);
}