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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  gdbsim_ops ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  simulator_command ; 

void
FUNC3 (void)
{
  FUNC2 ();
  FUNC1 (&gdbsim_ops);

  FUNC0 ("sim <command>", class_obscure, simulator_command,
	   "Send a command to the simulator.");
}