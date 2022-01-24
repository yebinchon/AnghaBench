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
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int do_cmd_pid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int signo)
{
	if (do_cmd_pid > 1) {
		FUNC2(do_cmd_pid, signo ? signo : SIGTERM);
		FUNC3(do_cmd_pid, NULL, 0);
	}

	if (signo)
		FUNC0(1);
	FUNC1(1);
}