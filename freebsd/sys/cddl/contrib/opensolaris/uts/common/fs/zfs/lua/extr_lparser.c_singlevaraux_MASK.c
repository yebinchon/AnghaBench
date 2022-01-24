#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_7__ {struct TYPE_7__* prev; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ FuncState ;

/* Variables and functions */
 int VLOCAL ; 
 int VUPVAL ; 
 int VVOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == NULL)  /* no more levels? */
    return VVOID;  /* default is global */
  else {
    int v = FUNC4(fs, n);  /* look up locals at current level */
    if (v >= 0) {  /* found? */
      FUNC0(var, VLOCAL, v);  /* variable is local */
      if (!base)
        FUNC1(fs, v);  /* local will be used as an upval */
      return VLOCAL;
    }
    else {  /* not found as local at current level; try upvalues */
      int idx = FUNC3(fs, n);  /* try existing upvalues */
      if (idx < 0) {  /* not found? */
        if (FUNC5(fs->prev, n, var, 0) == VVOID) /* try upper levels */
          return VVOID;  /* not found; is a global */
        /* else was LOCAL or UPVAL */
        idx  = FUNC2(fs, n, var);  /* will be a new upvalue */
      }
      FUNC0(var, VUPVAL, idx);
      return VUPVAL;
    }
  }
}