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
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  size_t DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC7(evutil_socket_t fd, short event, void *arg)
{
	char buf[255];
	int len;
	struct event *ev = arg;
#ifdef _WIN32
	DWORD dwBytesRead;
#endif

	FUNC4(stderr, "fifo_read called with fd: %d, event: %d, arg: %p\n",
	    (int)fd, event, arg);
#ifdef _WIN32
	len = ReadFile((HANDLE)fd, buf, sizeof(buf) - 1, &dwBytesRead, NULL);

	/* Check for end of file. */
	if (len && dwBytesRead == 0) {
		fprintf(stderr, "End Of File");
		event_del(ev);
		return;
	}

	buf[dwBytesRead] = '\0';
#else
	len = FUNC6(fd, buf, sizeof(buf) - 1);

	if (len <= 0) {
		if (len == -1)
			FUNC5("read");
		else if (len == 0)
			FUNC4(stderr, "Connection closed\n");
		FUNC2(ev);
		FUNC1(FUNC3(ev));
		return;
	}

	buf[len] = '\0';
#endif
	FUNC4(stdout, "Read: %s\n", buf);
}