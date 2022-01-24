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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  out1 ; 
 int /*<<< orphan*/  out2 ; 
 int /*<<< orphan*/  p1 ; 
 int /*<<< orphan*/  p2 ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 unsigned int* scalar ; 

int
FUNC4(void)
{
    int ret;

    scalar[0] = 1U;
    ret       = FUNC1(out1, scalar, p1);
    FUNC0(ret == 0);
    ret = FUNC1(out2, scalar, p2);
    FUNC0(ret == 0);
    FUNC3("%d\n", !!FUNC2(out1, out2, 32));

    return 0;
}