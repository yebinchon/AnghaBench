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
typedef  int /*<<< orphan*/  dtrace_xcall_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_CPUALL ; 
 scalar_t__ dtrace_sync_func ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(void)
{
        FUNC0(DTRACE_CPUALL, (dtrace_xcall_t)dtrace_sync_func, NULL);
}