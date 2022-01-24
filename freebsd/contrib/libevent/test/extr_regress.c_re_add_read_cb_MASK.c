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
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  scalar_t__ ev_ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct event* readd_test_event_last_added ; 
 int /*<<< orphan*/  test_ok ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short event, void *arg)
{
	char buf[256];
	struct event *ev_other = arg;
	ev_ssize_t n_read;

	readd_test_event_last_added = ev_other;

	n_read = FUNC3(fd, buf, sizeof(buf));

	if (n_read < 0) {
		FUNC4("read");
		FUNC1(FUNC2(ev_other));
		return;
	} else {
		FUNC0(ev_other, NULL);
		++test_ok;
	}
}