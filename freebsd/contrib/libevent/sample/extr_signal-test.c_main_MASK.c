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
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 struct event_base* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct event* FUNC8 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_cb ; 

int
FUNC9(int argc, char **argv)
{
	struct event *signal_int;
	struct event_base* base;
#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void) WSAStartup(wVersionRequested, &wsaData);
#endif

	/* Initalize the event library */
	base = FUNC5();

	/* Initalize one event */
	signal_int = FUNC8(base, SIGINT, signal_cb, FUNC7());

	FUNC2(signal_int, NULL);

	FUNC3(base);
	FUNC6(signal_int);
	FUNC4(base);

	return (0);
}