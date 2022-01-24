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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_cd ; 
 int /*<<< orphan*/  T_ce ; 
 int /*<<< orphan*/  T_li ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{				/* clear to the bottom of the screen */
    if (FUNC0(T_cd))
	(void) FUNC3(FUNC1(T_cd), FUNC2(T_li), PUTPURE);
    else if (FUNC0(T_ce))
	(void) FUNC3(FUNC1(T_ce), FUNC2(T_li), PUTPURE);
}