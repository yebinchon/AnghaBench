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
struct regcache {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_GETFPREGS ; 
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int SPARC_FPREG_PLEN ; 
 int SPARC_GREG_PLEN ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct regcache*,int,char*) ; 
 scalar_t__ target_has_fp ; 
 int /*<<< orphan*/  vxsparc_gregset ; 

void
FUNC4 (int regnum)
{
  struct regcache *regcache = current_regcache;
  char gregs[SPARC_GREG_PLEN];
  char fpregs[SPARC_FPREG_PLEN];
  CORE_ADDR sp;

  /* Get the general-purpose registers.  */
  FUNC1 (gregs, SPARC_GREG_PLEN, PTRACE_GETREGS);
  FUNC3 (&vxsparc_gregset, regcache, -1, gregs);

  /* If the target has floating-point registers, fetch them.
     Otherwise, zero the floating-point register values in GDB's
     register cache for good measure, even though we might not need
     to.  */
  if (target_has_fp)
    FUNC1 (fpregs, SPARC_FPREG_PLEN, PTRACE_GETFPREGS);
  else
    FUNC0 (fpregs, 0, SPARC_FPREG_PLEN);
  FUNC2 (regcache, -1, fpregs);
}