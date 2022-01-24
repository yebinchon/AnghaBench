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
 int MAX_REGISTER_SIZE ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  old_regs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (void)
{
  old_regs = FUNC1 ((NUM_REGS + NUM_PSEUDO_REGS) * MAX_REGISTER_SIZE + 1);
  FUNC0 (old_regs, 0, (NUM_REGS + NUM_PSEUDO_REGS) * MAX_REGISTER_SIZE + 1);
}