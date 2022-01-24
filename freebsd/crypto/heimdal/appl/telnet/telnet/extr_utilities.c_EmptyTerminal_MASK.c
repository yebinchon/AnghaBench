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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ tout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
    fd_set	outs;

    FUNC2(&outs);

    if (tout >= FD_SETSIZE)
	FUNC0("fd too large", 1);

    if (FUNC3() == 0) {
	FUNC1(tout, &outs);
	FUNC4(tout+1, 0, &outs, 0,
		      (struct timeval *) 0); /* wait for TTLOWAT */
    } else {
	while (FUNC3()) {
	    FUNC5(0);
	    FUNC1(tout, &outs);
	    FUNC4(tout+1, 0, &outs, 0,
			  (struct timeval *) 0); /* wait for TTLOWAT */
	}
    }
}