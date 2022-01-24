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
 scalar_t__ bootdev ; 
 char* bootpath ; 
 int /*<<< orphan*/  chosenh ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int ac, char **av)
{
	const char *path;
	char bootpath_full[255];
	int i, len;

	path = PATH_LOADER;
	for (i = 0; i < ac; i++) {
		switch (av[i][0]) {
		case '-':
			switch (av[i][1]) {
			default:
				FUNC7();
			}
			break;
		default:
			path = av[i];
			break;
		}
	}

	FUNC6(" \n>> FreeBSD/powerpc Open Firmware boot block\n"
	"   Boot path:   %s\n"
	"   Boot loader: %s\n", bootpath, path);

	len = 0;
	while (bootpath[len] != '\0') len++;

	FUNC2(bootpath_full,bootpath,len+1);

	if (bootpath_full[len-1] != ':') {
		/* First try full volume */
		if (FUNC0(bootpath_full,1) == 0)
			goto out;

		/* Add a : so that we try partitions if that fails */
		if (bootdev > 0)
			FUNC3(bootdev);
		bootpath_full[len] = ':';
		len += 1;
	}

	/* Loop through first 16 partitions to find a UFS one */
	for (i = 0; i < 16; i++) {
		if (i < 10) {
			bootpath_full[len] = i + '0';
			bootpath_full[len+1] = '\0';
		} else {
			bootpath_full[len] = '1';
			bootpath_full[len+1] = i - 10 + '0';
			bootpath_full[len+2] = '\0';
		}
			
		if (FUNC0(bootpath_full,1) >= 0)
			break;

		if (bootdev > 0)
			FUNC3(bootdev);
	}

	if (i >= 16)
		FUNC5("domount");

out:
	FUNC6("   Boot volume:   %s\n",bootpath_full);
	FUNC4(chosenh, "bootargs", bootpath_full, len+2);
	FUNC1(path);
	return (1);
}