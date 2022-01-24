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
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int called ; 
 int /*<<< orphan*/ * child_pair ; 
 int FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short event, void *arg)
{
	char buf[256];
	int len;

	len = FUNC2(fd, buf, sizeof(buf));
	if (FUNC4(child_pair[0], "", 1) < 0)
		FUNC3("write");

	if (len) {
		if (!called) {
			if (FUNC0(arg, NULL) == -1)
				FUNC1(1);
		}
	} else if (called == 1)
		test_ok = 1;

	called++;
}