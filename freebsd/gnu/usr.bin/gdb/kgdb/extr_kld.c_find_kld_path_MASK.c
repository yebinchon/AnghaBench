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

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ module_path_addr ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,char*) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static int
FUNC7 (char *filename, char *path, size_t path_size)
{
	char *module_path;
	char *kernel_dir, *module_dir, *cp;
	int error;

	if (exec_bfd) {
		kernel_dir = FUNC2(FUNC0(exec_bfd));
		if (kernel_dir != NULL) {
			FUNC4(path, path_size, "%s/%s", kernel_dir,
			    filename);
			if (FUNC1(path, path_size))
				return (1);
		}
	}
	if (module_path_addr != 0) {
		FUNC6(module_path_addr, &module_path, PATH_MAX,
		    &error);
		if (error == 0) {
			FUNC3(xfree, module_path);
			cp = module_path;
			while ((module_dir = FUNC5(&cp, ";")) != NULL) {
				FUNC4(path, path_size, "%s/%s", module_dir,
				    filename);
				if (FUNC1(path, path_size))
					return (1);
			}
		}
	}
	return (0);
}