#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* ci; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, TValue *fr, int idx) {
  TValue *to = FUNC2(L, idx);
  FUNC0(L, to);
  FUNC4(L, to, fr);
  if (idx < LUA_REGISTRYINDEX)  /* function upvalue? */
    FUNC3(L, FUNC1(L->ci->func), fr);
  /* LUA_REGISTRYINDEX does not need gc barrier
     (collector revisits it before finishing collection) */
}