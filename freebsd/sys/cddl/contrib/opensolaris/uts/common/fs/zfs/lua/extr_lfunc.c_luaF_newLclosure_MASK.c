#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/ ** upvals; int /*<<< orphan*/  nupvalues; int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {TYPE_1__ l; } ;
struct TYPE_7__ {TYPE_2__ cl; } ;
typedef  TYPE_2__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TLCL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

Closure *FUNC3 (lua_State *L, int n) {
  Closure *c = &FUNC1(L, LUA_TLCL, FUNC2(n), NULL, 0)->cl;
  c->l.p = NULL;
  c->l.nupvalues = FUNC0(n);
  while (n--) c->l.upvals[n] = NULL;
  return c;
}