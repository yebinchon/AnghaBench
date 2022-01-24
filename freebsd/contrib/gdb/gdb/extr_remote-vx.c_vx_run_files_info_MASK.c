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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  vx_running ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC2 ("\tRunning %s VxWorks process %s",
		     vx_running ? "child" : "attached",
		     FUNC1 (FUNC0 (inferior_ptid)));
  if (vx_running)
    FUNC2 (", function `%s'", vx_running);
  FUNC2 (".\n");
}