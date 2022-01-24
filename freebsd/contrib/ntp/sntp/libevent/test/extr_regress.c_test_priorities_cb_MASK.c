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
struct timeval {int dummy; } ;
struct test_pri_event {int count; int /*<<< orphan*/  ev; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 

__attribute__((used)) static void
FUNC3(evutil_socket_t fd, short what, void *arg)
{
	struct test_pri_event *pri = arg;
	struct timeval tv;

	if (pri->count == 3) {
		FUNC1(NULL);
		return;
	}

	pri->count++;

	FUNC2(&tv);
	FUNC0(&pri->ev, &tv);
}