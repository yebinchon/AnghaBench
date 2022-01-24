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
 char* PATH_LOADER ; 
 char* bootpath ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int ac, char **av)
{
	const char *path;
	int i;

	path = PATH_LOADER;
	for (i = 0; i < ac; i++) {
		switch (av[i][0]) {
		case '-':
			switch (av[i][1]) {
			default:
				FUNC5();
			}
			break;
		default:
			path = av[i];
			break;
		}
	}

#ifdef ZFSBOOT
	printf(" \n>> FreeBSD/sparc64 ZFS boot block\n   Boot path:   %s\n",
	    bootpath);
#else
	FUNC4(" \n>> FreeBSD/sparc64 boot block\n   Boot path:   %s\n"
	    "   Boot loader: %s\n", bootpath, path);
#endif

	if (FUNC0(bootpath) == -1)
		FUNC3("domount");

#ifdef ZFSBOOT
	loadzfs();
#else
	FUNC1(path);
#endif
	return (1);
}