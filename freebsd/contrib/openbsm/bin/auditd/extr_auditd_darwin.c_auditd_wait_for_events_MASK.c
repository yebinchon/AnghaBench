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
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_MSG_OPTION_NONE ; 
 int /*<<< orphan*/  MAX_MSG_SIZE ; 
 int /*<<< orphan*/  auditd_combined_server ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_set ; 

void
FUNC1(void)
{
	kern_return_t   result;

	/*
	 * Call the mach messaging server loop.
 	 */
	result = FUNC0(auditd_combined_server, MAX_MSG_SIZE,
	    port_set, MACH_MSG_OPTION_NONE);
}