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

/* Variables and functions */
 scalar_t__ EINTR ; 
 int SIGSTOP ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int do_cmd_pid ; 
 scalar_t__ errno ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int signo)
{
	int status;

	if (do_cmd_pid > 1) {
		FUNC1(do_cmd_pid, signo);
		while (FUNC2(do_cmd_pid, &status, WUNTRACED) == -1 &&
		    errno == EINTR)
			;
		FUNC1(FUNC0(), SIGSTOP);
	}
}