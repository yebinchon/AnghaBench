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
 scalar_t__ EXYNOS5420_SOC_ID ; 
 scalar_t__ FUNC0 () ; 
 int mp_maxid ; 
 int mp_ncpus ; 

void
FUNC1(platform_t plat)
{

	if (FUNC0() == EXYNOS5420_SOC_ID)
		mp_ncpus = 4;
	else
		mp_ncpus = 2;

	mp_maxid = mp_ncpus - 1;
}