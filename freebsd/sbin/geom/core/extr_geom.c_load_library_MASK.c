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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ G_LIB_VERSION ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * class_commands ; 
 char* class_name ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (char**,char*) ; 
 int /*<<< orphan*/ * version ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(void)
{
	char *curpath, path[MAXPATHLEN], *tofree, *totalpath;
	uint32_t *lib_version;
	void *dlh;
	int ret;

	ret = 0;
	tofree = totalpath = FUNC13(FUNC10());
	if (totalpath == NULL)
		FUNC5(EXIT_FAILURE, "Not enough memory for library path");

	if (FUNC12(totalpath, ':') != NULL)
		curpath = FUNC14(&totalpath, ":");
	else
		curpath = totalpath;
	/* Traverse the paths to find one that contains the library we want. */
	while (curpath != NULL) {
		FUNC11(path, sizeof(path), "%s/geom_%s.so", curpath,
		    class_name);
		ret = FUNC0(path, F_OK);
		if (ret == -1) {
			if (errno == ENOENT) {
				/*
				 * If we cannot find library, try the next
				 * path.
				 */
				curpath = FUNC14(&totalpath, ":");
				continue;
			}
			FUNC5(EXIT_FAILURE, "Cannot access library");
		}
		break;
	}
	FUNC8(tofree);
	/* No library was found, but standard commands can still be used */
	if (ret == -1)
		return;
	dlh = FUNC3(path, RTLD_NOW);
	if (dlh == NULL)
		FUNC6(EXIT_FAILURE, "Cannot open library: %s.", FUNC2());
	lib_version = FUNC4(dlh, "lib_version");
	if (lib_version == NULL) {
		FUNC15("Cannot find symbol %s: %s.", "lib_version", FUNC2());
		FUNC1(dlh);
		FUNC7(EXIT_FAILURE);
	}
	if (*lib_version != G_LIB_VERSION) {
		FUNC1(dlh);
		FUNC6(EXIT_FAILURE, "%s and %s are not synchronized.",
		    FUNC9(), path);
	}
	version = FUNC4(dlh, "version");
	if (version == NULL) {
		FUNC15("Cannot find symbol %s: %s.", "version", FUNC2());
		FUNC1(dlh);
		FUNC7(EXIT_FAILURE);
	}
	class_commands = FUNC4(dlh, "class_commands");
	if (class_commands == NULL) {
		FUNC15("Cannot find symbol %s: %s.", "class_commands",
		    FUNC2());
		FUNC1(dlh);
		FUNC7(EXIT_FAILURE);
	}
}