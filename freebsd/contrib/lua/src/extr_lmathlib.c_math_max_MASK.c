#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_OPLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  int n = FUNC2(L);  /* number of arguments */
  int imax = 1;  /* index of current maximum value */
  int i;
  FUNC0(L, n >= 1, 1, "value expected");
  for (i = 2; i <= n; i++) {
    if (FUNC1(L, imax, i, LUA_OPLT))
      imax = i;
  }
  FUNC3(L, imax);
  return 1;
}