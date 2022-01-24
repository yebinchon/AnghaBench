#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_t ;
struct TYPE_8__ {scalar_t__ msgh_local_port; int msgh_id; } ;
typedef  TYPE_1__ mach_msg_header_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
#define  SIGALRM 131 
#define  SIGCHLD 130 
#define  SIGHUP 129 
#define  SIGTERM 128 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ control_port ; 
 scalar_t__ max_idletime ; 
 scalar_t__ signal_port ; 

__attribute__((used)) static boolean_t
FUNC7(mach_msg_header_t *InHeadP, mach_msg_header_t *OutHeadP)
{
	mach_port_t local_port = InHeadP->msgh_local_port;

	/* Reset the idle time alarm, if used. */
	if (max_idletime)
		FUNC0(max_idletime);

	if (local_port == signal_port) {
		int signo = InHeadP->msgh_id;

		switch(signo) {
		case SIGTERM:
		case SIGALRM:
			FUNC6();
			/* Not reached. */

		case SIGCHLD:
			FUNC5();
			return (TRUE);

		case SIGHUP:
			FUNC2();
			return (TRUE);

		default:
			FUNC4("Received signal %d", signo);
			return (TRUE);
		}
	} else if (local_port == control_port) {
		boolean_t result;

		result = FUNC1(InHeadP, OutHeadP);
		if (!result)
			result = FUNC3(InHeadP, OutHeadP);
			return (result);
	}
	FUNC4("Recevied msg on bad port 0x%x.", local_port);
	return (FALSE);
}