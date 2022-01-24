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
 int /*<<< orphan*/  TEST1 ; 
 scalar_t__ called ; 
 int /*<<< orphan*/ * pair ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(evutil_socket_t fd, short event, void *arg)
{
	char buf[256];
	int len;

	len = FUNC0(fd, buf, sizeof(buf));

	if (called) {
		test_ok = 0;
	} else if (len) {
		/* Assumes global pair[0] can be used for writing */
		if (FUNC3(pair[0], TEST1, FUNC1(TEST1)+1) < 0) {
			FUNC2("write");
			test_ok = 0;
		} else {
			test_ok = 1;
		}
	}

	called++;
}