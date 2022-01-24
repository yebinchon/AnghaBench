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
typedef  scalar_t__ lua_KContext ;

/* Variables and functions */
 int LUA_OK ; 
 int LUA_YIELD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L, int status, lua_KContext extra) {
  if (status != LUA_OK && status != LUA_YIELD) {  /* error? */
    FUNC1(L, 0);  /* first result (false) */
    FUNC2(L, -2);  /* error message */
    return 2;  /* return false, msg */
  }
  else
    return FUNC0(L) - (int)extra;  /* return all results */
}