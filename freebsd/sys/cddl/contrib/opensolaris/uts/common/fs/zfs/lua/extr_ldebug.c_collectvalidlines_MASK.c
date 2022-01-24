#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_3__ lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_13__ {TYPE_1__* p; } ;
struct TYPE_15__ {TYPE_2__ l; } ;
struct TYPE_12__ {int* lineinfo; int sizelineinfo; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_4__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (lua_State *L, Closure *f) {
  if (FUNC3(f)) {
    FUNC6(L->top);
    FUNC0(L);
  }
  else {
    int i;
    TValue v;
    int *lineinfo = f->l.p->lineinfo;
    Table *t = FUNC1(L);  /* new table to store active lines */
    FUNC5(L, L->top, t);  /* push it on stack */
    FUNC0(L);
    FUNC4(&v, 1);  /* boolean 'true' to be the value of all indices */
    for (i = 0; i < f->l.p->sizelineinfo; i++)  /* for all lines with code */
      FUNC2(L, t, lineinfo[i], &v);  /* table[line] = true */
  }
}