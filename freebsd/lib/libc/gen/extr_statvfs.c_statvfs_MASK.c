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
struct statvfs {unsigned long f_namemax; } ;
struct statfs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PC_NAME_MAX ; 
 long FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct statfs*,struct statvfs*) ; 
 int FUNC2 (char const*,struct statfs*) ; 

int
FUNC3(const char * __restrict path, struct statvfs * __restrict result)
{
	struct statfs sfs;
	int rv;
	long pcval;

	rv = FUNC2(path, &sfs);
	if (rv != 0)
		return (rv);

	FUNC1(&sfs, result);

	/*
	 * Whether pathconf's -1 return means error or unlimited does not
	 * make any difference in this best-effort implementation.
	 */
	pcval = FUNC0(path, _PC_NAME_MAX);
	if (pcval == -1)
		result->f_namemax = ~0UL;
	else
		result->f_namemax = (unsigned long)pcval;
	return (0);
}