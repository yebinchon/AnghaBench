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
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_READ ; 
 int EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct event*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_cb ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int test_okay ; 
 int /*<<< orphan*/  timeout ; 

int
FUNC10(int argc, char **argv)
{
	struct event ev;
	const char *test = "test string";
	evutil_socket_t pair[2];

#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void) WSAStartup(wVersionRequested, &wsaData);
#endif

	if (FUNC6(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
		return (1);


	if (FUNC7(pair[0], test, (int)FUNC9(test)+1, 0) < 0)
		return (1);
	FUNC8(pair[0], EVUTIL_SHUT_WR);

	/* Initalize the event library */
	FUNC4();

	/* Initalize one event */
	FUNC5(&ev, pair[1], EV_READ | EV_TIMEOUT, read_cb, &ev);

	FUNC2(&ev, &timeout);

	FUNC3();

	return (test_okay);
}