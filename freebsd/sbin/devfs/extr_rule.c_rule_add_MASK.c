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
struct devfs_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFSIO_RADD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  in_rsnum ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devfs_rule*) ; 
 int /*<<< orphan*/  mpfd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_rule*,int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(int ac, char **av)
{
	struct devfs_rule dr;
	int rv;

	if (ac < 2)
		FUNC5();
	if (FUNC4(av[1], "-") == 0)
		FUNC2(stdin, DEVFSIO_RADD, in_rsnum);
	else {
		FUNC3(&dr, ac - 1, av + 1, in_rsnum);
		rv = FUNC1(mpfd, DEVFSIO_RADD, &dr);
		if (rv == -1)
			FUNC0(1, "ioctl DEVFSIO_RADD");
	}
	return (0);
}