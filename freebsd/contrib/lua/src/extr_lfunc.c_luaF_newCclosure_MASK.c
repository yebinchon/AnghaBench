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
struct TYPE_4__ {int /*<<< orphan*/  nupvalues; } ;
typedef  int /*<<< orphan*/  GCObject ;
typedef  TYPE_1__ CClosure ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TCCL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

CClosure *FUNC4 (lua_State *L, int n) {
  GCObject *o = FUNC2(L, LUA_TCCL, FUNC3(n));
  CClosure *c = FUNC1(o);
  c->nupvalues = FUNC0(n);
  return c;
}