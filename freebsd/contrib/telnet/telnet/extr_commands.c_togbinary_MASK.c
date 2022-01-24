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
 int binmode ; 
 int donebinarytoggle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(int val)
{
    donebinarytoggle = 1;

    if (val >= 0) {
	binmode = val;
    } else {
	if (FUNC2(TELOPT_BINARY) &&
				FUNC0(TELOPT_BINARY)) {
	    binmode = 1;
	} else if (FUNC3(TELOPT_BINARY) &&
				FUNC1(TELOPT_BINARY)) {
	    binmode = 0;
	}
	val = binmode ? 0 : 1;
    }

    if (val == 1) {
	if (FUNC2(TELOPT_BINARY) &&
					FUNC0(TELOPT_BINARY)) {
	    FUNC4("Already operating in binary mode with remote host.\n");
	} else {
	    FUNC4("Negotiating binary mode with remote host.\n");
	    FUNC5(3);
	}
    } else {
	if (FUNC3(TELOPT_BINARY) &&
					FUNC1(TELOPT_BINARY)) {
	    FUNC4("Already in network ascii mode with remote host.\n");
	} else {
	    FUNC4("Negotiating network ascii mode with remote host.\n");
	    FUNC6(3);
	}
    }
    return 1;
}