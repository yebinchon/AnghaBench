#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  consume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ,int) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ termdata ; 
 TYPE_1__ ttyoring ; 

int
FUNC11(int drop)
{
    int n, n0, n1;

    n0 = FUNC8(&ttyoring);
    if ((n1 = n = FUNC7(&ttyoring)) > 0) {
	if (drop) {
	    FUNC2();
	    /* we leave 'n' alone! */
	} else {
	    n = FUNC3(ttyoring.consume, n);
	}
    }
    if (n > 0) {
	if (termdata && n) {
	    FUNC0('>', ttyoring.consume, n);
	}
	/*
	 * If we wrote everything, and the full count is
	 * larger than what we wrote, then write the
	 * rest of the buffer.
	 */
	if (n1 == n && n0 > n) {
		n1 = n0 - n;
		if (!drop)
			n1 = FUNC3(ttyoring.bottom, n1);
		if (n1 > 0)
			n += n1;
	}
	FUNC6(&ttyoring, n);
    }
    if (n < 0) {
	if (errno == EAGAIN || errno == EINTR) {
	    return -1;
	} else {
	    FUNC6(&ttyoring, FUNC8(&ttyoring));
	    FUNC10(0);
	    FUNC9();
	    FUNC1(net);
	    FUNC5(stderr, "Write error on local output.\n");
	    FUNC4(1);
	}
	return -1;
    }
    if (n == n0) {
	if (n0)
	    return -1;
	return 0;
    }
    return n0 - n + 1;
}