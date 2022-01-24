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
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ipv4_works ; 
 int ipv6_works ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ lib_inited ; 

void
FUNC3(void)
{
	if (lib_inited)
		return;
	ipv4_works = (ISC_R_SUCCESS == FUNC1());
	ipv6_works = (ISC_R_SUCCESS == FUNC2());
	FUNC0();
	lib_inited = TRUE;
}