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
 int arm_num_regs ; 
 int* arm_regmap ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void
FUNC1 (void *buf)
{
  int i;

  for (i = 0; i < arm_num_regs; i++)
	if (arm_regmap[i] != -1)
		FUNC0 (i, ((char *) buf) + arm_regmap[i]);

}