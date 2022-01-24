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
 int /*<<< orphan*/  T_cl ; 
 int /*<<< orphan*/  T_ho ; 
 int /*<<< orphan*/  T_li ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{				/* clear the whole screen and home */
    if (FUNC0(T_cl))
	/* send the clear screen code */
	(void) FUNC4(FUNC1(T_cl), FUNC2(T_li), PUTPURE);
    else if (FUNC0(T_ho) && FUNC0(T_cd)) {
	(void) FUNC4(FUNC1(T_ho), FUNC2(T_li), PUTPURE);	/* home */
	/* clear to bottom of screen */
	(void) FUNC4(FUNC1(T_cd), FUNC2(T_li), PUTPURE);
    }
    else {
	(void) FUNC3('\r');
	(void) FUNC3('\n');
    }
}