#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ consume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,scalar_t__,int) ; 
 scalar_t__ ENOBUFS ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ encrypt_output ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  net ; 
 scalar_t__ netdata ; 
 TYPE_1__ netoring ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(void)
{
    int n, n1;

#ifdef	ENCRYPTION
    if (encrypt_output)
	ring_encrypt(&netoring, encrypt_output);
#endif	/* ENCRYPTION */
    if ((n1 = n = FUNC8(&netoring)) > 0) {
	if (!FUNC4(&netoring)) {
	    n = FUNC9(net, (char *)netoring.consume, n, 0); /* normal write */
	} else {
	    /*
	     * In 4.2 (and 4.3) systems, there is some question about
	     * what byte in a sendOOB operation is the "OOB" data.
	     * To make ourselves compatible, we only send ONE byte
	     * out of band, the one WE THINK should be OOB (though
	     * we really have more the TCP philosophy of urgent data
	     * rather than the Unix philosophy of OOB data).
	     */
	    n = FUNC9(net, (char *)netoring.consume, 1, MSG_OOB);/* URGENT data */
	}
    }
    if (n < 0) {
	if (errno != ENOBUFS && errno != EWOULDBLOCK) {
	    FUNC10();
	    FUNC3(hostname);
	    (void)FUNC2(net);
	    FUNC5(&netoring);
	    FUNC1("Connection closed by foreign host.\n", 1);
	    /*NOTREACHED*/
	}
	n = 0;
    }
    if (netdata && n) {
	FUNC0('>', netoring.consume, n);
    }
    if (n) {
	FUNC6(&netoring, n);
	/*
	 * If we sent all, and more to send, then recurse to pick
	 * up the other half.
	 */
	if ((n1 == n) && FUNC8(&netoring)) {
	    (void) FUNC11();
	}
	return 1;
    } else {
	return 0;
    }
}