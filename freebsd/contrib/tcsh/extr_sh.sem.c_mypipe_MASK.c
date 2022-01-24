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
 int /*<<< orphan*/  ERR_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(int *pv)
{

    if (FUNC2(pv) < 0)
	goto oops;
    (void)FUNC0(pv[0] = FUNC1(pv[0], -1), 1);
    (void)FUNC0(pv[1] = FUNC1(pv[1], -1), 1);
    if (pv[0] >= 0 && pv[1] >= 0)
	return;
    if (pv[0] >= 0)
	FUNC4(pv[0]);
    if (pv[1] >= 0)
	FUNC4(pv[1]);
oops:
    FUNC3(ERR_PIPE);
}