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

/* Variables and functions */
 int /*<<< orphan*/  TEST1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int test_ok ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(evutil_socket_t fd, short event, void *arg)
{
	int len;

	len = FUNC1(fd, TEST1, FUNC0(TEST1) + 1);
	if (len == -1)
		test_ok = 0;
	else
		test_ok = 1;
}