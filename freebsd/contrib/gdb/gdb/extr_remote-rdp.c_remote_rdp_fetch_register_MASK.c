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
 int ARM_F0_REGNUM ; 
 int ARM_F7_REGNUM ; 
 int ARM_FPS_REGNUM ; 
 int ARM_PC_REGNUM ; 
 int ARM_PS_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_REGS ; 
 int RDP_CPU_READWRITE_MASK_CPSR ; 
 int RDP_CPU_READWRITE_MASK_PC ; 
 int RDP_FPU_READWRITE_MASK_FPS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4 (int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	FUNC4 (regno);
    }
  else
    {
      char buf[MAX_REGISTER_SIZE];
      if (regno < 15)
	FUNC2 (1 << regno, buf);
      else if (regno == ARM_PC_REGNUM)
	FUNC2 (RDP_CPU_READWRITE_MASK_PC, buf);
      else if (regno == ARM_PS_REGNUM)
	FUNC2 (RDP_CPU_READWRITE_MASK_CPSR, buf);
      else if (regno == ARM_FPS_REGNUM)
	FUNC1 (RDP_FPU_READWRITE_MASK_FPS, buf);
      else if (regno >= ARM_F0_REGNUM && regno <= ARM_F7_REGNUM)
	FUNC1 (1 << (regno - ARM_F0_REGNUM), buf);
      else
	{
	  FUNC0 ("Help me with fetch reg %d\n", regno);
	}
      FUNC3 (regno, buf);
    }
}