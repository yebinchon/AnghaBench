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
 int /*<<< orphan*/  TELOPT_BINARY ; 
 int donebinarytoggle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int val)
{
    donebinarytoggle = 1;

    if (val == -1)
	val = FUNC0(TELOPT_BINARY) ? 0 : 1;

    if (val == 1) {
	if (FUNC0(TELOPT_BINARY)) {
	    FUNC2("Already transmitting in binary mode.\n");
	} else {
	    FUNC2("Negotiating binary mode on output.\n");
	    FUNC3(2);
	}
    } else {
	if (FUNC1(TELOPT_BINARY)) {
	    FUNC2("Already transmitting in network ascii mode.\n");
	} else {
	    FUNC2("Negotiating network ascii mode on output.\n");
	    FUNC4(2);
	}
    }
    return 1;
}