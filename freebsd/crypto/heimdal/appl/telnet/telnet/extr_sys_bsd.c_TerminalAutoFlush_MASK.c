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
 int LNOFLSH ; 
 int /*<<< orphan*/  TIOCLGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC1(void)
{
#if	defined(LNOFLSH)
    int flush;

    ioctl(0, TIOCLGET, (char *)&flush);
    return !(flush&LNOFLSH);	/* if LNOFLSH, no autoflush */
#else	/* LNOFLSH */
    return 1;
#endif	/* LNOFLSH */
}