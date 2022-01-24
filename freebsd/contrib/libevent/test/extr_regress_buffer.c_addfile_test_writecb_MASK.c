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
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int addfile_test_done_writing ; 
 int /*<<< orphan*/  addfile_test_event_base ; 
 int addfile_test_total_written ; 
 scalar_t__ FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int FUNC4 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(evutil_socket_t fd, short what, void *arg)
{
	struct evbuffer *b = arg;
	int r;
	FUNC3(b);
	while (FUNC2(b)) {
		r = FUNC4(b, fd);
		if (r > 0) {
			addfile_test_total_written += r;
			FUNC1(("Wrote %d/%d bytes", r, addfile_test_total_written));
		} else {
			int e = FUNC6(fd);
			if (FUNC0(e))
				return;
			FUNC7("write");
			FUNC5(addfile_test_event_base,NULL);
		}
		FUNC3(b);
	}
	addfile_test_done_writing = 1;
	return;
end:
	FUNC5(addfile_test_event_base,NULL);
}