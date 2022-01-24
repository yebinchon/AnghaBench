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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  paths ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* class_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void)
{
	char name[MAXPATHLEN], paths[MAXPATHLEN * 8], *p;
	struct stat sb;
	size_t len;

	FUNC3(name, sizeof(name), "g_%s", class_name);
	/*
	 * If already in kernel, "load" command is not available.
	 */
	if (FUNC2(name) >= 0)
		return (0);
	FUNC0(paths, sizeof(paths));
	len = sizeof(paths);
	if (FUNC6("kern.module_path", paths, &len, NULL, 0) < 0)
		FUNC1(EXIT_FAILURE, "sysctl(kern.module_path)");
	for (p = FUNC5(paths, ";"); p != NULL; p = FUNC5(NULL, ";")) {
		FUNC3(name, sizeof(name), "%s/geom_%s.ko", p, class_name);
		/*
		 * If geom_<name>.ko file exists, "load" command is available.
		 */
		if (FUNC4(name, &sb) == 0)
			return (1);
	}
	return (0);
}