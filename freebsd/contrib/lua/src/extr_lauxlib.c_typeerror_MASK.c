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
 scalar_t__ LUA_TLIGHTUSERDATA ; 
 scalar_t__ LUA_TSTRING ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, int arg, const char *tname) {
  const char *msg;
  const char *typearg;  /* name for the type of the actual argument */
  if (FUNC1(L, arg, "__name") == LUA_TSTRING)
    typearg = FUNC4(L, -1);  /* use the given type name */
  else if (FUNC5(L, arg) == LUA_TLIGHTUSERDATA)
    typearg = "light userdata";  /* special name for messages */
  else
    typearg = FUNC2(L, arg);  /* standard name */
  msg = FUNC3(L, "%s expected, got %s", tname, typearg);
  return FUNC0(L, arg, msg);
}