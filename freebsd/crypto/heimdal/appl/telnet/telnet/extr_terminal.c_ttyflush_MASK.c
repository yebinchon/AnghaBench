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
struct TYPE_5__ {scalar_t__ bottom; scalar_t__ consume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ termdata ; 
 TYPE_1__ ttyoring ; 

int
FUNC6(int drop)
{
    int n, n0, n1;

    n0 = FUNC5(&ttyoring);
    if ((n1 = n = FUNC4(&ttyoring)) > 0) {
	if (drop) {
	    FUNC1();
	    /* we leave 'n' alone! */
	} else {
	    n = FUNC2((char *)ttyoring.consume, n);
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
			n1 = FUNC2((char *)ttyoring.bottom, n1);
		if (n1 > 0)
			n += n1;
	}
	FUNC3(&ttyoring, n);
    }
    if (n < 0)
	return -1;
    if (n == n0) {
	if (n0)
	    return -1;
	return 0;
    }
    return n0 - n + 1;
}