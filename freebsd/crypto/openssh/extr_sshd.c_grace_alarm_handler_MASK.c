#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ m_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLACKLIST_AUTH_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  active_state ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* pmonitor ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_privsep ; 

__attribute__((used)) static void
FUNC8(int sig)
{
	if (use_privsep && pmonitor != NULL && pmonitor->m_pid > 0)
		FUNC3(pmonitor->m_pid, SIGALRM);

	/*
	 * Try to kill any processes that we have spawned, E.g. authorized
	 * keys command helpers.
	 */
	if (FUNC1(0) == FUNC2()) {
		FUNC5(SIGTERM, SIG_IGN);
		FUNC3(0, SIGTERM);
	}

	FUNC0(BLACKLIST_AUTH_FAIL, "ssh");

	/* Log error and exit. */
	FUNC4("Timeout before authentication for %s port %d",
	    FUNC6(active_state), FUNC7(active_state));
}