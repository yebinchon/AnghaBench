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
typedef  int /*<<< orphan*/  gregset_t ;

/* Variables and functions */
 int S390_NUM_REGS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int* regmap_gregset ; 

void
FUNC2 (gregset_t *regp)
{
  int i;
  for (i = 0; i < S390_NUM_REGS; i++)
    if (regmap_gregset[i] != -1)
      FUNC1 (current_regcache, i, 
			   (char *)regp + regmap_gregset[i] + FUNC0 (i));
}