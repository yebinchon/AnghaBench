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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_INVALIDFILE ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 

isc_result_t
FUNC5(isc_mem_t *mctx, char *path, char **dirname, char **basename)
{
	char *dir, *file, *slash;
	char *backslash;

	slash = FUNC4(path, '/');

	backslash = FUNC4(path, '\\');
	if ((slash != NULL && backslash != NULL && backslash > slash) ||
	    (slash == NULL && backslash != NULL))
		slash = backslash;

	if (slash == path) {
		file = ++slash;
		dir = FUNC2(mctx, "/");
	} else if (slash != NULL) {
		file = ++slash;
		dir = FUNC0(mctx, slash - path);
		if (dir != NULL)
			FUNC3(dir, path, slash - path);
	} else {
		file = path;
		dir = FUNC2(mctx, ".");
	}

	if (dir == NULL)
		return (ISC_R_NOMEMORY);

	if (*file == '\0') {
		FUNC1(mctx, dir);
		return (ISC_R_INVALIDFILE);
	}

	*dirname = dir;
	*basename = file;

	return (ISC_R_SUCCESS);
}