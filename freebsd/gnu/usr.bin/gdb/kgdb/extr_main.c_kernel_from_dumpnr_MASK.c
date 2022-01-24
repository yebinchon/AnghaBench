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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* crashdir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  kernel ; 
 int FUNC5 (char*,int,char*,char*,...) ; 
 int FUNC6 (char*,struct stat*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(int nr)
{
	char path[PATH_MAX];
	FILE *info;
	char *s;
	struct stat st;
	int l;

	/*
	 * If there's a kernel image right here in the crash directory, then
	 * use it.  The kernel image is either called kernel.<nr> or is in a
	 * subdirectory kernel.<nr> and called kernel.  The latter allows us
	 * to collect the modules in the same place.
	 */
	FUNC5(path, sizeof(path), "%s/kernel.%d", crashdir, nr);
	if (FUNC6(path, &st) == 0) {
		if (FUNC1(st.st_mode)) {
			kernel = FUNC8(path);
			return;
		}
		if (FUNC0(st.st_mode)) {
			FUNC5(path, sizeof(path), "%s/kernel.%d/kernel",
			    crashdir, nr);
			if (FUNC6(path, &st) == 0 && FUNC1(st.st_mode)) {
				kernel = FUNC8(path);
				return;
			}
		}
	}

	/*
	 * No kernel image here.  Parse the dump header.  The kernel object
	 * directory can be found there and we probably have the kernel
	 * image still in it.  The object directory may also have a kernel
	 * with debugging info (called kernel.debug).  If we have a debug
	 * kernel, use it.
	 */
	FUNC5(path, sizeof(path), "%s/info.%d", crashdir, nr);
	info = FUNC4(path, "r");
	if (info == NULL) {
		FUNC11("%s", path);
		return;
	}
	while (FUNC3(path, sizeof(path), info) != NULL) {
		l = FUNC9(path);
		if (l > 0 && path[l - 1] == '\n')
			path[--l] = '\0';
		if (FUNC10(path, "    ", 4) == 0) {
			s = FUNC7(path, ':');
			s = (s == NULL) ? path + 4 : s + 1;
			l = FUNC5(path, sizeof(path), "%s/kernel.debug", s);
			if (FUNC6(path, &st) == -1 || !FUNC1(st.st_mode)) {
				path[l - 6] = '\0';
				if (FUNC6(path, &st) == -1 ||
				    !FUNC1(st.st_mode))
					break;
			}
			kernel = FUNC8(path);
			break;
		}
	}
	FUNC2(info);
}