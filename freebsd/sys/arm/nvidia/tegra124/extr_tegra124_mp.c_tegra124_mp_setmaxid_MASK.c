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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int mp_maxid ; 
 int mp_ncpus ; 

void
FUNC2(platform_t plat)
{
	int ncpu;

	/* If we've already set the global vars don't bother to do it again. */
	if (mp_ncpus != 0)
		return;

	/* Read current CP15 Cache Size ID Register */
	ncpu = FUNC1();
	ncpu = FUNC0(ncpu);

	mp_ncpus = ncpu;
	mp_maxid = ncpu - 1;
}