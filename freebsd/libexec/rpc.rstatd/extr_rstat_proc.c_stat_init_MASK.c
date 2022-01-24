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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) ()) ; 
 int stat_is_init ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
    stat_is_init = 1;
    FUNC0(0);
    FUNC2();
    (void) FUNC1(SIGALRM, updatestat);
    FUNC0(1);
}