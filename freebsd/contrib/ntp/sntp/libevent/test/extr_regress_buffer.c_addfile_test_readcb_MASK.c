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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ addfile_test_done_writing ; 
 int /*<<< orphan*/  addfile_test_event_base ; 
 scalar_t__ addfile_test_total_read ; 
 scalar_t__ addfile_test_total_written ; 
 int FUNC2 (struct evbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(evutil_socket_t fd, short what, void *arg)
{
	struct evbuffer *b = arg;
	int e, r = 0;
	do {
		r = FUNC2(b, fd, 1024);
		if (r > 0) {
			addfile_test_total_read += r;
			FUNC1(("Read %d/%d bytes", r, addfile_test_total_read));
		}
	} while (r > 0);
	if (r < 0) {
		e = FUNC4(fd);
		if (! FUNC0(e)) {
			FUNC5("read");
			FUNC3(addfile_test_event_base,NULL);
		}
	}
	if (addfile_test_done_writing &&
	    addfile_test_total_read >= addfile_test_total_written) {
		FUNC3(addfile_test_event_base,NULL);
	}
}