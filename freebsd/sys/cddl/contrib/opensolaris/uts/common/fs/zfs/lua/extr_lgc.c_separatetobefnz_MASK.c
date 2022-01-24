#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/ * tobefnz; int /*<<< orphan*/ * finobj; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_5__ {int /*<<< orphan*/ * next; int /*<<< orphan*/  marked; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  FINALIZEDBIT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEPARATED ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (lua_State *L, int all) {
  global_State *g = FUNC0(L);
  GCObject **p = &g->finobj;
  GCObject *curr;
  GCObject **lastnext = &g->tobefnz;
  /* find last 'next' field in 'tobefnz' list (to add elements in its end) */
  while (*lastnext != NULL)
    lastnext = &FUNC1(*lastnext)->next;
  while ((curr = *p) != NULL) {  /* traverse all finalizable objects */
    FUNC5(!FUNC2(curr));
    FUNC5(FUNC6(FUNC1(curr)->marked, SEPARATED));
    if (!(FUNC3(curr) || all))  /* not being collected? */
      p = &FUNC1(curr)->next;  /* don't bother with it */
    else {
      FUNC4(FUNC1(curr)->marked, FINALIZEDBIT); /* won't be finalized again */
      *p = FUNC1(curr)->next;  /* remove 'curr' from 'finobj' list */
      FUNC1(curr)->next = *lastnext;  /* link at the end of 'tobefnz' list */
      *lastnext = curr;
      lastnext = &FUNC1(curr)->next;
    }
  }
}