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
 int ARM_PC_REGNUM ; 
 int ARM_PS_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_REGS ; 
 int RDP_CPU_READWRITE_MASK_CPSR ; 
 int RDP_CPU_READWRITE_MASK_PC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
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
      char tmp[MAX_REGISTER_SIZE];
      FUNC0 (regno, tmp);
      if (regno < 15)
	FUNC3 (1 << regno, tmp);
      else if (regno == ARM_PC_REGNUM)
	FUNC3 (RDP_CPU_READWRITE_MASK_PC, tmp);
      else if (regno == ARM_PS_REGNUM)
	FUNC3 (RDP_CPU_READWRITE_MASK_CPSR, tmp);
      else if (regno >= ARM_F0_REGNUM && regno <= ARM_F7_REGNUM)
	FUNC2 (1 << (regno - ARM_F0_REGNUM), tmp);
      else
	{
	  FUNC1 ("Help me with reg %d\n", regno);
	}
    }
}