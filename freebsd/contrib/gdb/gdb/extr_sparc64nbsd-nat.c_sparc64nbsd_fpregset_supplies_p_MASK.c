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
 int SPARC64_F32_REGNUM ; 
 int SPARC64_F62_REGNUM ; 
 int SPARC64_FSR_REGNUM ; 
 int SPARC_F0_REGNUM ; 
 int SPARC_F31_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (int regnum)
{
  if (FUNC0 (current_gdbarch) == 32)
    return FUNC1 (regnum);

  /* Floating-point registers.  */
  if ((regnum >= SPARC_F0_REGNUM && regnum <= SPARC_F31_REGNUM)
      || (regnum >= SPARC64_F32_REGNUM && regnum <= SPARC64_F62_REGNUM))
    return 1;

  /* Control registers.  */
  if (regnum == SPARC64_FSR_REGNUM)
    return 1;

  return 0;
}