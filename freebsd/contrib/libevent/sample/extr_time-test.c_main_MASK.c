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
struct timeval {int tv_sec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int EV_PERSIST ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,struct event_base*,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 struct event_base* FUNC5 () ; 
 int event_is_persistent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*) ; 
 int /*<<< orphan*/  lasttime ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  timeout_cb ; 

int
FUNC9(int argc, char **argv)
{
	struct event timeout;
	struct timeval tv;
	struct event_base *base;
	int flags;

#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void)WSAStartup(wVersionRequested, &wsaData);
#endif

	if (argc == 2 && !FUNC8(argv[1], "-p")) {
		event_is_persistent = 1;
		flags = EV_PERSIST;
	} else {
		event_is_persistent = 0;
		flags = 0;
	}

	/* Initalize the event library */
	base = FUNC5();

	/* Initalize one event */
	FUNC3(&timeout, base, -1, flags, timeout_cb, (void*) &timeout);

	FUNC7(&tv);
	tv.tv_sec = 2;
	FUNC2(&timeout, &tv);

	FUNC6(&lasttime, NULL);

	FUNC4(base);

	return (0);
}