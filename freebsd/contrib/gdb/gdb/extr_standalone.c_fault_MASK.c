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
 int /*<<< orphan*/  PUSH_REGISTERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

FUNC2 (void)
{
  /* Transfer all registers and fault code to the stack
     in canonical order: registers in order of GDB register number,
     followed by fault code.  */
  PUSH_REGISTERS;

  /* Transfer them to saved_regs and fault_code.  */
  FUNC1 ();

  FUNC0 ();
  /* Control does not reach here */
}