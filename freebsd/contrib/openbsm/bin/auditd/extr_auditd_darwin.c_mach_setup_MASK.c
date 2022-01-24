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
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_PORT_SET ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int /*<<< orphan*/  __AUDIT_LAUNCHD_LABEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  control_port ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  port_set ; 
 int /*<<< orphan*/  signal_port ; 

__attribute__((used)) static int
FUNC9(int launchd_flag)
{
	mach_msg_type_name_t poly;

	/*
	 * Allocate a port set.
	 */
	if (FUNC5(FUNC8(), MACH_PORT_RIGHT_PORT_SET,
	    &port_set) != KERN_SUCCESS)  {
		FUNC1("Allocation of port set failed");
		return (-1);
	}


	/*
	 * Allocate a signal reflection port.
	 */
	if (FUNC5(FUNC8(), MACH_PORT_RIGHT_RECEIVE,
	    &signal_port) != KERN_SUCCESS ||
	    FUNC7(FUNC8(), signal_port, port_set) !=
	    KERN_SUCCESS)  {
		FUNC1("Allocation of signal port failed");
		return (-1);
	}

	/*
	 * Allocate a trigger port.
	 */
	if (launchd_flag) {
		/*
		 * If started under launchd, lookup port in launchd dictionary.
		 */
		if ((control_port = FUNC3(__AUDIT_LAUNCHD_LABEL)) ==
		    MACH_PORT_NULL || FUNC7(FUNC8(),
		    control_port, port_set) != KERN_SUCCESS) {
			FUNC1("Cannot get Mach control port"
                            " via launchd");
			return (-1);
		} else
			FUNC0("Mach control port registered"
			    " via launchd");
	} else {
		/*
		 * If not started under launchd, allocate port and register.
		 */
		if (FUNC5(FUNC8(),
		    MACH_PORT_RIGHT_RECEIVE, &control_port) != KERN_SUCCESS ||
		    FUNC7(FUNC8(), control_port,
		    port_set) != KERN_SUCCESS)
			FUNC1("Allocation of trigger port failed");

		/*
		 * Create a send right on our trigger port.
		 */
		FUNC6(FUNC8(), control_port,
		    MACH_MSG_TYPE_MAKE_SEND, &control_port, &poly);

		/*
		 * Register the trigger port with the kernel.
		 */
		if (FUNC2(FUNC4(),
		    control_port) != KERN_SUCCESS) {
                        FUNC1("Cannot set Mach control port");
			return (-1);
		} else
			FUNC0("Mach control port registered");
	}

	return (0);
}