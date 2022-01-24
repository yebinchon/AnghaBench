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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int mp_maxid ; 
 int mp_ncpus ; 

void
FUNC1(platform_t plat)
{

	FUNC0("platform_mp_setmaxid\n");
	if (mp_ncpus != 0)
		return;

	mp_ncpus = 4;
	mp_maxid = mp_ncpus - 1;
	FUNC0("mp_maxid=%d\n", mp_maxid);
}