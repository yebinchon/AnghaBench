#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ can_step; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_PC_REGNUM ; 
 int /*<<< orphan*/  RDP_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ds ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  if (ds.can_step && 0)
    {
      /* The pie board can't do steps so I can't test this, and
         the other code will always work. */
      int status;
      FUNC5 ("bbw-S-B",
		RDP_STEP, 0, 1,
		&status);
    }
  else
    {
      char handle[4];
      CORE_ADDR pc = FUNC2 (ARM_PC_REGNUM);
      pc = FUNC0 (pc);
      FUNC3 (pc, handle);
      FUNC1 ();
      FUNC4 (pc, handle);
    }
}