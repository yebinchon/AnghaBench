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
struct reg {int /*<<< orphan*/  r_cpsr; int /*<<< orphan*/  r_pc; int /*<<< orphan*/  r_lr; int /*<<< orphan*/  r_sp; int /*<<< orphan*/ * r; } ;

/* Variables and functions */
 int ARM_A1_REGNUM ; 
 int ARM_LR_REGNUM ; 
 int ARM_PC_REGNUM ; 
 int ARM_PS_REGNUM ; 
 int ARM_SP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void
FUNC1 (struct reg *gregset, int regno)
{
  int i;

  for (i = ARM_A1_REGNUM; i < ARM_SP_REGNUM; i++)
    if ((regno == -1 || regno == i))
      FUNC0 (i, &gregset->r[i]);
  if (regno == -1 || regno == ARM_SP_REGNUM)
      FUNC0 (ARM_SP_REGNUM, &gregset->r_sp);
  if (regno == -1 || regno == ARM_LR_REGNUM)
      FUNC0 (ARM_LR_REGNUM, &gregset->r_lr);
  if (regno == -1 || regno == ARM_PC_REGNUM)
      FUNC0 (ARM_PC_REGNUM, &gregset->r_pc);
  if (regno == -1 || regno == ARM_PS_REGNUM)
      FUNC0 (ARM_PS_REGNUM, &gregset->r_cpsr);
}