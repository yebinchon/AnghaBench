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
typedef  int /*<<< orphan*/  binpath ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int O_VERIFY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char*,char const*,int) ; 
 int FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char**,char*) ; 

__attribute__((used)) static int
FUNC11(const char *argv0, bool search_in_path)
{
	char *pathenv, *pe, binpath[PATH_MAX];
	int fd;

	if (search_in_path && FUNC6(argv0, '/') == NULL) {
		pathenv = FUNC2("PATH");
		if (pathenv == NULL) {
			FUNC0("-p and no PATH environment variable");
			FUNC4();
		}
		pathenv = FUNC7(pathenv);
		if (pathenv == NULL) {
			FUNC0("Cannot allocate memory");
			FUNC4();
		}
		fd = -1;
		errno = ENOENT;
		while ((pe = FUNC10(&pathenv, ":")) != NULL) {
			if (FUNC9(binpath, pe, sizeof(binpath)) >=
			    sizeof(binpath))
				continue;
			if (binpath[0] != '\0' &&
			    FUNC8(binpath, "/", sizeof(binpath)) >=
			    sizeof(binpath))
				continue;
			if (FUNC8(binpath, argv0, sizeof(binpath)) >=
			    sizeof(binpath))
				continue;
			fd = FUNC3(binpath, O_RDONLY | O_CLOEXEC | O_VERIFY);
			if (fd != -1 || errno != ENOENT)
				break;
		}
		FUNC1(pathenv);
	} else {
		fd = FUNC3(argv0, O_RDONLY | O_CLOEXEC | O_VERIFY);
	}

	if (fd == -1) {
		FUNC0("Cannot open %s: %s", argv0, FUNC5(errno));
		FUNC4();
	}
	return (fd);
}