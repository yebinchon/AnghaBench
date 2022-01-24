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
struct TYPE_7__ {int nCcalls; int /*<<< orphan*/  nny; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int LUAI_MAXCCALLS ; 
 int /*<<< orphan*/  LUA_ERRERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4 (lua_State *L, StkId func, int nResults, int allowyield) {
  if (++L->nCcalls >= LUAI_MAXCCALLS) {
    if (L->nCcalls == LUAI_MAXCCALLS)
      FUNC2(L, "C stack overflow");
    else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
      FUNC1(L, LUA_ERRERR);  /* error while handing stack error */
  }
  if (!allowyield) L->nny++;
  if (!FUNC0(L, func, nResults))  /* is a Lua function? */
    FUNC3(L);  /* call it */
  if (!allowyield) L->nny--;
  L->nCcalls--;
}