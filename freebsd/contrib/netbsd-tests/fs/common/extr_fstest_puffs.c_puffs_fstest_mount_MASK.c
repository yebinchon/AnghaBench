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
struct puffstestargs {int pta_rumpfd; int /*<<< orphan*/  pta_childpid; int /*<<< orphan*/  pta_pargslen; int /*<<< orphan*/  pta_pargs; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_PUFFS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct puffstestargs*) ; 

int
FUNC6(const atf_tc_t *tc, void *arg, const char *path, int flags)
{
	struct puffstestargs *pargs = arg;
	int fd;

	FUNC1();
	fd = FUNC4("/dev/puffs", O_RDWR);
	if (fd == -1)
		return fd;

	if (FUNC2(path, 0777) == -1)
		return -1;

	if (FUNC3(MOUNT_PUFFS, path, flags,
	    pargs->pta_pargs, pargs->pta_pargslen) == -1) {
		/* apply "to kill a child" to avoid atf hang (kludge) */
		FUNC0(pargs->pta_childpid, SIGKILL);
		return -1;
	}

	pargs->pta_rumpfd = fd;
	FUNC5(pargs);

	return 0;
}