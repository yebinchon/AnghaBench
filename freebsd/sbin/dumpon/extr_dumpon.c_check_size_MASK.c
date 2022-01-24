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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  physmem ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  minidump ;

/* Variables and functions */
 int CTL_HW ; 
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int HW_PHYSMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 size_t FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int*,size_t,unsigned long*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC7(int fd, const char *fn)
{
	int name[] = { CTL_HW, HW_PHYSMEM };
	size_t namelen = FUNC3(name);
	unsigned long physmem;
	size_t len;
	off_t mediasize;
	int minidump;

	len = sizeof(minidump);
	if (FUNC6("debug.minidump", &minidump, &len, NULL, 0) == 0 &&
	    minidump == 1)
		return;
	len = sizeof(physmem);
	if (FUNC5(name, namelen, &physmem, &len, NULL, 0) != 0)
		FUNC0(EX_OSERR, "can't get memory size");
	if (FUNC2(fd, DIOCGMEDIASIZE, &mediasize) != 0)
		FUNC0(EX_OSERR, "%s: can't get size", fn);
	if ((uintmax_t)mediasize < (uintmax_t)physmem) {
		if (verbose)
			FUNC4("%s is smaller than physical memory\n", fn);
		FUNC1(EX_IOERR);
	}
}