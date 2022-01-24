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
struct TYPE_6__ {int stacksize; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int EXTRA_STACK ; 
 int LUAI_MAXSTACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 

void FUNC3 (lua_State *L) {
  int inuse = FUNC2(L);
  int goodsize = inuse + (inuse / 8) + 2*EXTRA_STACK;
  if (goodsize > LUAI_MAXSTACK) goodsize = LUAI_MAXSTACK;
  if (inuse > LUAI_MAXSTACK ||  /* handling stack overflow? */
      goodsize >= L->stacksize)  /* would grow instead of shrink? */
    FUNC0(L);  /* don't change stack (change only for debugging) */
  else
    FUNC1(L, goodsize);  /* shrink it */
}