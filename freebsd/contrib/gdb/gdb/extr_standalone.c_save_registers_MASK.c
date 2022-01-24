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
 size_t NUM_REGS ; 
 int fault_code ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  saved_regs ; 

FUNC1 (int firstreg)
{
  FUNC0 (saved_regs, &firstreg, sizeof saved_regs);
  fault_code = (&firstreg)[NUM_REGS];
}