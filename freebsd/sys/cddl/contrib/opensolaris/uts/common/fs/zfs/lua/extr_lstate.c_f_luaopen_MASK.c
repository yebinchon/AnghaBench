#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int gcrunning; int /*<<< orphan*/  version; int /*<<< orphan*/  memerrmsg; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMERRMSG ; 
 int /*<<< orphan*/  MINSTRTABSIZE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11 (lua_State *L, void *ud) {
  global_State *g = FUNC0(L);
  FUNC1(ud);
  FUNC10(L, L);  /* init stack */
  FUNC2(L, g);
  FUNC5(L, MINSTRTABSIZE);  /* initial size of string table */
  FUNC6(L);
  FUNC7(L);
  /* pre-create memory-error message */
  g->memerrmsg = FUNC4(L, MEMERRMSG);
  FUNC3(g->memerrmsg);  /* it should never be collected */
  g->gcrunning = 1;  /* allow gc */
  g->version = FUNC8(NULL);
  FUNC9(L);
}