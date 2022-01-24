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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,void**,char const*,int /*<<< orphan*/ ,void*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

int
FUNC4(const atf_tc_t *tc, void **argp,
	const char *image, off_t size, void *fspriv)
{
	char dtfs_path[MAXPATHLEN];
	char *dtfsargv[6];
	char **theargv;

	/* build dtfs exec path from atf test dir */
	FUNC3(dtfs_path, "%s/../puffs/h_dtfs/h_dtfs",
	    FUNC1(tc, "srcdir"));

	if (fspriv) {
		theargv = fspriv;
		theargv[0] = dtfs_path;
	} else {
		dtfsargv[0] = dtfs_path;
		dtfsargv[1] = FUNC0("-i");
		dtfsargv[2] = FUNC0("-s");
		dtfsargv[3] = FUNC0("dtfs");
		dtfsargv[4] = FUNC0("fictional");
		dtfsargv[5] = NULL;

		theargv = dtfsargv;
	}

	return FUNC2(tc, argp, image, size, fspriv, theargv);
}