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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  int /*<<< orphan*/  PointHandle ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_PC_REGNUM ; 
 int RDIError_BreakpointReached ; 
 int RDIError_NoError ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int execute_status ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (ptid_t ptid, int step, enum target_signal siggnal)
{
  int rslt;
  PointHandle point;

  if (0 /* turn on when hardware supports single-stepping */ )
    {
      rslt = FUNC1 (1, &point);
      if (rslt != RDIError_NoError)
	FUNC5 ("RDI_step: %s\n", FUNC6 (rslt));
    }
  else
    {
      char handle[4];
      CORE_ADDR pc = 0;

      if (step)
	{
	  pc = FUNC7 (ARM_PC_REGNUM);
	  pc = FUNC2 (pc);
	  FUNC3 (pc, handle);
	}

      execute_status = rslt = FUNC0 (&point);
      if (rslt != RDIError_NoError && rslt != RDIError_BreakpointReached)
	FUNC5 ("RDI_execute: %s\n", FUNC6 (rslt));

      if (step)
	FUNC4 (pc, handle);
    }
}