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
typedef  int naddr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int IN_CLASSA_NSHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int IN_LOOPBACKNET ; 
 int FUNC3 (int) ; 

int					/* 0=bad */
FUNC4(naddr addr)
{
	addr = FUNC3(addr);

	if (FUNC0(addr)) {
		if (addr == 0)
			return 1;	/* default */

		addr >>= IN_CLASSA_NSHIFT;
		return (addr != 0 && addr != IN_LOOPBACKNET);
	}

	return (FUNC1(addr) || FUNC2(addr));
}