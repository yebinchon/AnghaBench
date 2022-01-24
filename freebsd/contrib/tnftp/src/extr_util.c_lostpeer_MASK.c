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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/ * cout ; 
 int data ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ proxflag ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void
FUNC7(int dummy)
{
	int oerrno = errno;

	FUNC0(0);
	if (connected) {
		if (cout != NULL) {
			(void)FUNC6(FUNC4(cout), 1+1);
			(void)FUNC3(cout);
			cout = NULL;
		}
		if (data >= 0) {
			(void)FUNC6(data, 1+1);
			(void)FUNC2(data);
			data = -1;
		}
		connected = 0;
	}
	FUNC5(1);
	if (connected) {
		if (cout != NULL) {
			(void)FUNC6(FUNC4(cout), 1+1);
			(void)FUNC3(cout);
			cout = NULL;
		}
		connected = 0;
	}
	proxflag = 0;
	FUNC5(0);
	FUNC1();
	errno = oerrno;
}