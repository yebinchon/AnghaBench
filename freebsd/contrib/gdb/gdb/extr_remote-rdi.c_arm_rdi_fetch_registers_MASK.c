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
 int ARM_PC_REGNUM ; 
 int ARM_PS_REGNUM ; 
 int RDIError_NoError ; 
 int RDIReg_CPSR ; 
 int RDIReg_PC ; 
 int FUNC0 (int,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void
FUNC5 (int regno)
{
  int rslt, rdi_regmask;
  unsigned long rawreg, rawregs[32];
  char cookedreg[4];

  if (regno == -1)
    {
      rslt = FUNC0 (255, 0x27fff, rawregs);
      if (rslt != RDIError_NoError)
	{
	  FUNC1 ("RDI_CPUread: %s\n", FUNC2 (rslt));
	}

      for (regno = 0; regno < 15; regno++)
	{
	  FUNC3 (cookedreg, 4, rawregs[regno]);
	  FUNC4 (regno, (char *) cookedreg);
	}
      FUNC3 (cookedreg, 4, rawregs[15]);
      FUNC4 (ARM_PS_REGNUM, (char *) cookedreg);
      FUNC5 (ARM_PC_REGNUM);
    }
  else
    {
      if (regno == ARM_PC_REGNUM)
	rdi_regmask = RDIReg_PC;
      else if (regno == ARM_PS_REGNUM)
	rdi_regmask = RDIReg_CPSR;
      else if (regno < 0 || regno > 15)
	{
	  rawreg = 0;
	  FUNC4 (regno, (char *) &rawreg);
	  return;
	}
      else
	rdi_regmask = 1 << regno;

      rslt = FUNC0 (255, rdi_regmask, &rawreg);
      if (rslt != RDIError_NoError)
	{
	  FUNC1 ("RDI_CPUread: %s\n", FUNC2 (rslt));
	}
      FUNC3 (cookedreg, 4, rawreg);
      FUNC4 (regno, (char *) cookedreg);
    }
}