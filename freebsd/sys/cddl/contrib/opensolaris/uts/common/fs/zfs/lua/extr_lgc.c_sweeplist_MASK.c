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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lu_mem ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_2__ {int marked; scalar_t__ tt; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LUA_TTHREAD ; 
 int /*<<< orphan*/  OLDBIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int maskcolors ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int) ; 

__attribute__((used)) static GCObject **FUNC12 (lua_State *L, GCObject **p, lu_mem count) {
  global_State *g = FUNC0(L);
  int ow = FUNC9(g);
  int toclear, toset;  /* bits to clear and to set in all live objects */
  int tostop;  /* stop sweep when this is true */
  if (FUNC7(g)) {  /* generational mode? */
    toclear = ~0;  /* clear nothing */
    toset = FUNC1(OLDBIT);  /* set the old bit of all surviving objects */
    tostop = FUNC1(OLDBIT);  /* do not sweep old generation */
  }
  else {  /* normal mode */
    toclear = maskcolors;  /* clear all color bits + old bit */
    toset = FUNC8(g);  /* make object white */
    tostop = 0;  /* do not stop */
  }
  while (*p != NULL && count-- > 0) {
    GCObject *curr = *p;
    int marked = FUNC4(curr)->marked;
    if (FUNC6(ow, marked)) {  /* is 'curr' dead? */
      *p = FUNC4(curr)->next;  /* remove 'curr' from list */
      FUNC3(L, curr);  /* erase 'curr' */
    }
    else {
      if (FUNC11(marked, tostop))
        return NULL;  /* stop sweeping this list */
      if (FUNC4(curr)->tt == LUA_TTHREAD)
        FUNC10(L, FUNC5(curr));  /* sweep thread's upvalues */
      /* update marks */
      FUNC4(curr)->marked = FUNC2((marked & toclear) | toset);
      p = &FUNC4(curr)->next;  /* go to next element */
    }
  }
  return (*p == NULL) ? NULL : p;
}