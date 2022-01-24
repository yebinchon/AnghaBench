#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_2__ {void const* zScript; int /*<<< orphan*/  interp; } ;
typedef  TYPE_1__ SqlCollate ;

/* Variables and functions */
 int /*<<< orphan*/  TCL_EVAL_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
  void *pCtx,
  int nA,
  const void *zA,
  int nB,
  const void *zB
){
  SqlCollate *p = (SqlCollate *)pCtx;
  Tcl_Obj *pCmd;

  pCmd = FUNC5(p->zScript, -1);
  FUNC3(pCmd);
  FUNC4(p->interp, pCmd, FUNC5(zA, nA));
  FUNC4(p->interp, pCmd, FUNC5(zB, nB));
  FUNC1(p->interp, pCmd, TCL_EVAL_DIRECT);
  FUNC0(pCmd);
  return (FUNC6(FUNC2(p->interp)));
}