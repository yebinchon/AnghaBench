#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int stacksize; scalar_t__ stack; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int ERRORSTACKSIZE ; 
 int EXTRA_STACK ; 
 int LUAI_MAXSTACK ; 
 int /*<<< orphan*/  LUA_ERRERR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

void FUNC4 (lua_State *L, int n) {
  int size = L->stacksize;
  if (size > LUAI_MAXSTACK)  /* error after extra size? */
    FUNC2(L, LUA_ERRERR);
  else {
    int needed = FUNC0(L->top - L->stack) + n + EXTRA_STACK;
    int newsize = 2 * size;
    if (newsize > LUAI_MAXSTACK) newsize = LUAI_MAXSTACK;
    if (newsize < needed) newsize = needed;
    if (newsize > LUAI_MAXSTACK) {  /* stack overflow? */
      FUNC1(L, ERRORSTACKSIZE);
      FUNC3(L, "stack overflow");
    }
    else
      FUNC1(L, newsize);
  }
}