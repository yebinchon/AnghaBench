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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ net ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int
FUNC6(void)
{
    static struct timeval timeout = { 0, 0 };
    fd_set	excepts;
    int value;

    do {
	FUNC2(&excepts);
	FUNC1(net, &excepts);
	value = FUNC5(net+1, (fd_set *)0, (fd_set *)0, &excepts, &timeout);
    } while ((value == -1) && (errno == EINTR));

    if (value < 0) {
	FUNC3("select");
	(void) FUNC4();
	/* NOTREACHED */
    }
    if (FUNC0(net, &excepts)) {
	return 1;
    } else {
	return 0;
    }
}