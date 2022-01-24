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
 int CursorH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ T_CanCEOL ; 
 int /*<<< orphan*/  T_ce ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC4(int num)
{
    int i;

    if (num <= 0)
	return;

    if (T_CanCEOL && FUNC0(T_ce))
	(void) FUNC3(FUNC1(T_ce), 1, PUTPURE);
    else {
	for (i = 0; i < num; i++)
	    (void) FUNC2(' ');
	CursorH += num;		/* have written num spaces */
    }
}