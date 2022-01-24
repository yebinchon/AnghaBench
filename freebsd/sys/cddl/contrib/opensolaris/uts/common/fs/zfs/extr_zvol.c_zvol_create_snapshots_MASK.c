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
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIND_SNAPSHOTS ; 
 int EEXIST ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmu_objset_prefetch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*,int,char*,char const*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(objset_t *os, const char *name)
{
	uint64_t cookie, obj;
	char *sname;
	int error, len;

	cookie = obj = 0;
	sname = FUNC6(MAXPATHLEN, KM_SLEEP);

#if 0
	(void) dmu_objset_find(name, dmu_objset_prefetch, NULL,
	    DS_FIND_SNAPSHOTS);
#endif

	for (;;) {
		len = FUNC9(sname, MAXPATHLEN, "%s@", name);
		if (len >= MAXPATHLEN) {
			FUNC2(os, FTAG);
			error = ENAMETOOLONG;
			break;
		}

		FUNC4(FUNC1(os), FTAG);
		error = FUNC3(os, MAXPATHLEN - len,
		    sname + len, &obj, &cookie, NULL);
		FUNC5(FUNC1(os), FTAG);
		if (error != 0) {
			if (error == ENOENT)
				error = 0;
			break;
		}

		error = FUNC10(sname);
		if (error != 0 && error != EEXIST) {
			FUNC8("ZFS WARNING: Unable to create ZVOL %s (error=%d).\n",
			    sname, error);
			break;
		}
	}

	FUNC7(sname, MAXPATHLEN);
	return (error);
}