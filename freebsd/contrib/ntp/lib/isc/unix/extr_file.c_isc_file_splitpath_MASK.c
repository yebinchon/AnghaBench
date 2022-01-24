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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 

isc_result_t
FUNC6(isc_mem_t *mctx, char *path, char **dirnam, char **basenam)
{
	char *dir, *file, *slash;

	FUNC0(path != NULL);

	slash = FUNC5(path, '/');

	if (slash == path) {
		file = ++slash;
		dir = FUNC3(mctx, "/");
	} else if (slash != NULL) {
		file = ++slash;
		dir = FUNC1(mctx, slash - path);
		if (dir != NULL)
			FUNC4(dir, path, slash - path);
	} else {
		file = path;
		dir = FUNC3(mctx, ".");
	}

	if (dir == NULL)
		return (ISC_R_NOMEMORY);

	if (*file == '\0') {
		FUNC2(mctx, dir);
		return (ISC_R_INVALIDFILE);
	}

	*dirnam = dir;
	*basenam = file;

	return (ISC_R_SUCCESS);
}