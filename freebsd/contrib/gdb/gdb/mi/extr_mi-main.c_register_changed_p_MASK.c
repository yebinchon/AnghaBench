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
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * old_regs ; 

__attribute__((used)) static int
FUNC5 (int regnum)
{
  char raw_buffer[MAX_REGISTER_SIZE];

  if (! FUNC2 (deprecated_selected_frame, regnum, raw_buffer))
    return -1;

  if (FUNC3 (&old_regs[FUNC0 (regnum)], raw_buffer,
	      FUNC1 (regnum)) == 0)
    return 0;

  /* Found a changed register. Return 1. */

  FUNC4 (&old_regs[FUNC0 (regnum)], raw_buffer,
	  FUNC1 (regnum));

  return 1;
}