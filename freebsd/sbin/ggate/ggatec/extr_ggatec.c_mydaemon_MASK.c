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
 scalar_t__ CREATE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ action ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ g_gate_verbose ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC3(void)
{

	if (g_gate_verbose > 0)
		return;
	if (FUNC0(0, 0) == 0)
		return;
	if (action == CREATE)
		FUNC2(unit, 1);
	FUNC1(EXIT_FAILURE, "Cannot daemonize");
}