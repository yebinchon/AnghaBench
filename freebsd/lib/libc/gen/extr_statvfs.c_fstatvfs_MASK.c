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
 long FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct statfs*) ; 
 int FUNC2 (struct statfs*,struct statvfs*) ; 

int
FUNC3(int fd, struct statvfs *result)
{
	struct statfs sfs;
	int rv;
	long pcval;

	rv = FUNC1(fd, &sfs);
	if (rv != 0)
		return (rv);

	rv = FUNC2(&sfs, result);
	if (rv != 0)
		return (rv);

	/*
	 * Whether pathconf's -1 return means error or unlimited does not
	 * make any difference in this best-effort implementation.
	 */
	pcval = FUNC0(fd, _PC_NAME_MAX);
	if (pcval == -1)
		result->f_namemax = ~0UL;
	else
		result->f_namemax = (unsigned long)pcval;
	return (0);
}