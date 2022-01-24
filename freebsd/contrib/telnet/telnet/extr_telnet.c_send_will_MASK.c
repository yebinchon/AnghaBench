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
 int /*<<< orphan*/  IAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WILL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ telnetport ; 
 scalar_t__* will_wont_resp ; 

void
FUNC6(int c, int init)
{
    if (init) {
	if (((will_wont_resp[c] == 0) && FUNC2(c)) ||
				FUNC3(c))
	    return;
	FUNC5(c);
	will_wont_resp[c]++;
    }
    if (telnetport < 0)
	return;
    FUNC0(IAC, WILL);
    FUNC1(c);
    FUNC4("SENT", WILL, c);
}