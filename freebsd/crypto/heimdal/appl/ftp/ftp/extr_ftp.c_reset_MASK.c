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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cin ; 
 int code ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8 (int argc, char **argv)
{
    fd_set mask;
    int nfnd = 1;

    FUNC1 (&mask);
    while (nfnd > 0) {
	if (FUNC4 (cin) >= FD_SETSIZE)
	    FUNC3 (1, "fd too large");
	FUNC0 (FUNC4 (cin), &mask);
	if ((nfnd = FUNC2 (&mask, 0)) < 0) {
	    FUNC7 ("reset");
	    code = -1;
	    FUNC6(0);
	} else if (nfnd) {
	    FUNC5(0);
	}
    }
}