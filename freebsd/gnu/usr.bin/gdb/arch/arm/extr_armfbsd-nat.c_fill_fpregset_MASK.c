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
struct fpreg {int /*<<< orphan*/  fpr_fpsr; int /*<<< orphan*/ * fpr; } ;

/* Variables and functions */
 int ARM_F0_REGNUM ; 
 int ARM_F7_REGNUM ; 
 int ARM_FPS_REGNUM ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC1 (struct fpreg *fparegset, int regno)
{
  int i;

  for (i = ARM_F0_REGNUM; i <= ARM_F7_REGNUM; i++)
    if (regno == -1 || regno == i)
      FUNC0(current_regcache, i,
	  &fparegset->fpr[i - ARM_F0_REGNUM]);
  if (regno == -1 || regno == ARM_FPS_REGNUM)
    FUNC0(current_regcache, ARM_FPS_REGNUM, 
	&fparegset->fpr_fpsr);
}