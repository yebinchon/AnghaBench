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
 int /*<<< orphan*/  O_EXEC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int,int) ; 

int
FUNC3(int nochdir, int noclose)
{
	int chdirfd, nullfd, ret;

	if (!noclose)
		nullfd = FUNC1(_PATH_DEVNULL, O_RDWR, 0);
	else
		nullfd = -1;

	if (!nochdir)
		chdirfd = FUNC1("/", O_EXEC);
	else
		chdirfd = -1;

	ret = FUNC2(chdirfd, nullfd);

	if (chdirfd != -1)
		FUNC0(chdirfd);

	if (nullfd > 2)
		FUNC0(nullfd);

	return (ret);
}