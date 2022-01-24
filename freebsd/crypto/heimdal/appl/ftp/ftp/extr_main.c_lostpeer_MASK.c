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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/ * cout ; 
 int data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ proxflag ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

RETSIGTYPE
FUNC7(int sig)
{

    if (connected) {
	if (cout != NULL) {
	    FUNC6(FUNC3(cout), SHUT_RDWR);
	    FUNC2(cout);
	    cout = NULL;
	}
	if (data >= 0) {
	    FUNC6(data, SHUT_RDWR);
	    FUNC1(data);
	    data = -1;
	}
	connected = 0;
    }
    FUNC4(1);
    if (connected) {
	if (cout != NULL) {
	    FUNC6(FUNC3(cout), SHUT_RDWR);
	    FUNC2(cout);
	    cout = NULL;
	}
	connected = 0;
    }
    proxflag = 0;
    FUNC4(0);
    FUNC5();
    FUNC0(0);
}