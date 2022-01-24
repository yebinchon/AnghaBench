#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ gcstate; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_10__ {scalar_t__ tt; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSpause ; 
 scalar_t__ LUA_TTABLE ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC10 (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = FUNC0(L);
  FUNC7(FUNC2(o) && FUNC5(v) && !FUNC3(g, v) && !FUNC3(g, o));
  FUNC7(g->gcstate != GCSpause);
  FUNC7(FUNC1(o)->tt != LUA_TTABLE);
  if (FUNC6(g))  /* must keep invariant? */
    FUNC9(g, v);  /* restore invariant */
  else {  /* sweep phase */
    FUNC7(FUNC4(g));
    FUNC8(g, o);  /* mark main obj. as white to avoid other barriers */
  }
}