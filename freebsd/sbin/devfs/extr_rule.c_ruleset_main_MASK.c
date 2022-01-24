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
typedef  int /*<<< orphan*/  devfs_rsnum ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFSIO_SUSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpfd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int ac, char **av)
{
	devfs_rsnum rsnum;
	int rv;

	FUNC3("devfs ruleset");
	if (ac < 2)
		FUNC4();
	rsnum = FUNC0(av[1]);
	rv = FUNC2(mpfd, DEVFSIO_SUSE, &rsnum);
	if (rv == -1)
		FUNC1(1, "ioctl DEVFSIO_SUSE");
	return (0);
}