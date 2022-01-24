#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  eloop_signal_handler ;
struct TYPE_3__ {void* user_data; int /*<<< orphan*/  handler; } ;
struct TYPE_4__ {TYPE_1__ term_signal; } ;
typedef  int /*<<< orphan*/  PHANDLER_ROUTINE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ eloop ; 
 scalar_t__ eloop_handle_console_ctrl ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(eloop_signal_handler handler,
				    void *user_data)
{
#ifndef _WIN32_WCE
	if (FUNC1((PHANDLER_ROUTINE) eloop_handle_console_ctrl,
				  TRUE) == 0) {
		FUNC2("SetConsoleCtrlHandler() failed: %d\n",
		       (int) FUNC0());
		return -1;
	}
#endif /* _WIN32_WCE */

	eloop.term_signal.handler = handler;
	eloop.term_signal.user_data = user_data;
		
	return 0;
}