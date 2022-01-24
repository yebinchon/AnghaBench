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
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DBG_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int libevent_tests_running_in_debug_mode ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_weakrand_state ; 
 int /*<<< orphan*/  testaliases ; 
 int /*<<< orphan*/  testgroups ; 
 scalar_t__ FUNC9 (int,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

int
FUNC12(int argc, const char **argv)
{
#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void) WSAStartup(wVersionRequested, &wsaData);
#endif

#ifndef _WIN32
	if (FUNC8(SIGPIPE, SIG_IGN) == SIG_ERR)
		return 1;
#endif

#ifdef _WIN32
	tinytest_skip(testgroups, "http/connection_retry");
	tinytest_skip(testgroups, "http/https_connection_retry");
#endif

#ifndef EVENT__DISABLE_THREAD_SUPPORT
	if (!FUNC6("EVENT_NO_DEBUG_LOCKS"))
		FUNC4();
#endif

	if (FUNC6("EVENT_DEBUG_MODE")) {
		FUNC3();
		libevent_tests_running_in_debug_mode = 1;
	}
	if (FUNC6("EVENT_DEBUG_LOGGING_ALL")) {
		FUNC2(EVENT_DBG_ALL);
	}

	FUNC10(testaliases);

	FUNC5(&test_weakrand_state, 0);

	if (FUNC9(argc,argv,testgroups))
		return 1;

	FUNC7();

	return 0;
}