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
struct type {int dummy; } ;
struct gdbarch_tdep {scalar_t__ ppc_gp0_regnum; scalar_t__ ppc_vr0_regnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FP0_REGNUM ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct gdbarch_tdep* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (struct type *type, char *valbuf)
{
  struct gdbarch_tdep *tdep = FUNC5 (current_gdbarch);

  if (FUNC1 (type) == TYPE_CODE_FLT)

    /* Floating point values are returned starting from FPR1 and up.
       Say a double_double_double type could be returned in
       FPR1/FPR2/FPR3 triple.  */

    FUNC4 (FUNC0 (FP0_REGNUM + 1), valbuf,
				     FUNC2 (type));
  else if (FUNC1 (type) == TYPE_CODE_ARRAY)
    {
      if (FUNC2 (type) == 16
          && FUNC3 (type))
	FUNC4 (FUNC0 (tdep->ppc_vr0_regnum + 2),
					 valbuf, FUNC2 (type));
    }
  else
    /* Everything else is returned in GPR3 and up.  */
    FUNC4 (FUNC0 (FUNC5 (current_gdbarch)->ppc_gp0_regnum + 3),
				     valbuf, FUNC2 (type));
}